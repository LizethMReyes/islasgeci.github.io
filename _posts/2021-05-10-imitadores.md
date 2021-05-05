---
layout: post
title: Imitadores y espías
author: Nepo
tags: programacion
---

En la presente nota mostraremos algunos ejemplos de los usos de la paquetería
[`pytest-mock`](https://github.com/pytest-dev/pytest-mock/). El código que aquí presentamos lo
podrás encontrar en `pollos_petrel/tests/tests_petrel_age_predictor.py`, en la consignación 66eb24.
En la sección referencias está la lista de material en la que nos inspiramos para escribir esta
nota.
## Imitador genérico
El objetivo es probar la función `get_subset_morphometric_data`. Esta función tiene dos variables
de entrada `Cleaner_Morphometric` y `Predictor`. Las dos variables dos objetos de clases que aun no
implementamos, pero sabemos que nos gustaría que tuvieran las propiedades `data_subset` y
`predictions` respectivamente.

```python
def test_get_subset_morphometric_data(mocker):
    predictions = [1, 2, 3]
    expected_data_subset_dictionary = {
        "Fecha": ["01/Jan/2021", "02/Feb/2021", "03/Mar/2021"],
        "age_predictions": predictions,
        "Fecha_dt": [datetime(2021, 1, 1), datetime(2021, 2, 2), datetime(2021, 3, 3)],
    }
    expected_data_subset = pd.DataFrame(expected_data_subset_dictionary)
    data_subset = pd.DataFrame({"Fecha": ["01/Ene/2021", "02/Feb/2021", "03/Mar/2021"]})
    Cleaner_Morphometric = mocker.Mock()
    Cleaner_Morphometric.data_subset = data_subset.copy()
    Predictor = mocker.Mock()
    Predictor.predictions = predictions
    obtained_data_subset = get_subset_morphometric_data(Cleaner_Morphometric, Predictor)
    assert_frame_equal(obtained_data_subset, expected_data_subset)
```
Lo que queremos es probar `get_subset_morphometric_data`) y no desviarnos con la
implementación de las clases a la que pertenecen `Cleaner_Morphometric` y `Predictor`. Sandi Metz
propone en [este video](https://youtu.be/v-2yFMzxqwU) utilizar imitadores. A continuación veremos
cómo los implementamos:
```python
    Cleaner_Morphometric = mocker.Mock()
    Cleaner_Morphometric.data_subset = data_subset.copy()
```
Definimos el objeto genérico `Cleaner_Morphometric` con propiedad `data_subset`. Hacemos algo
similar con objeto `Predictor` y su propiedad `predictions`:
```python
    Predictor = mocker.Mock()
    Predictor.predictions = predictions
```
[Stargirl](https://thea.codes/) sugiere que no usemos este tipo de imitadores. El motivo es que si al
implementar las clases cambiamos las interfaces la prueba no se enterará del cambio y por lo tanto
no fallará.

## Imitando objetos de clases particulares
Para atender la sugerencia de Stargirl podemos heredar la interface de alguna clase. Con este cambio
la interfaz cambia la prueba nos recordará que debemos actualizarla. En el primer ejemplo generamos
un imitador de la clase `Predictions_and_Parameters`. Lo que nos interesa probar el funcionamiento
de `Plotter` por lo que no debemos de distraernos con obtener el objeto `Parameters`: 

```python
def test_Plotter(mocker):
    Parameters = mocker.Mock(spec=Predictions_and_Parameters)
    Parameters.data_for_plot.return_value = [1, 2, 3], [1, 2, 3]
    Plotter_parameters = Plotter(Parameters)
    Plotter_parameters.plot()
    return Plotter_parameters.savefig("reports/figures/figura.png")
```
La clase `Predictions_and_Parameters` tiene un método llamado `data_for_plot`. El imitador no tiene
ninguna de las funcionalidades que tendría un objeto de la clase `Predictions_and_Parameters`,
pero tiene misma interfaz, es decir puedes hacer un llamado al método `data_for_plot`. 
```python
    Parameters = mocker.Mock(spec=Predictions_and_Parameters)
    Parameters.data_for_plot.return_value = [1, 2, 3], [1, 2, 3]
```
Este método es la manera en la que la clase `Plotter` se comunica con `Parameters`. Así que le
asignamos algún valor con el que sabemos que comportamiento esperamos de `Plotter`.

El siguiente ejemplo es más restrictivo aun. Lo que haremos ahora es "parchar" el comportamiento de
una clase, así el objeto parchado no tendrá el comportamiento original. 
```python
def test_Fitter(mocker):
    def train_test_split(self):
        return (
            np.array([6, 4, 8]).reshape(-1, 1),
            np.array([1, 2, 3]).reshape(-1, 1),
            [3, 2, 4],
            pd.DataFrame({"y_train": [4]}),
        )

    mocker.patch(
        "pollos_petrel.petrel_age_predictor.Set_Morphometric.train_test_split", train_test_split
    )
    Morphometric_Data = Set_Morphometric(petrel_data)
    Fitter_model = Fitter(Morphometric_Data)
    assert Fitter_model.lineal_model.normalize
```
Como podemos inferir la clase `Set_Morphometric` tiene un método llamado `train_test_split`. Y el
objeto `Morphometric_Data` pertenece a la clase `Set_Morphometric`. Pero lo que hicimos fue cambiar
el comportamiento de la clase original. Sin importar cuál es el valor de `petrel_data`, el método
`train_test_split` siempre tendrá el mismo comportamiento:
```python
    def train_test_split(self):
        return (
            np.array([6, 4, 8]).reshape(-1, 1),
            np.array([1, 2, 3]).reshape(-1, 1),
            [3, 2, 4],
            pd.DataFrame({"y_train": [4]}),
        )

    mocker.patch(
        "pollos_petrel.petrel_age_predictor.Set_Morphometric.train_test_split", train_test_split
    )
    Morphometric_Data = Set_Morphometric(petrel_data)
```
La clave aquí es definir primero el parche antes de inicializar el objeto `Morphometric_Data`.

En los dos ejemplos anteriores, los objetos imitadores siguen una interfaz determinada. A `Parameters`
no lo construimos utilizando el constructor de su clase. `Morphometric_Data` es una instancia de la
clase `Set_Morphometric`, pero con el comportamiento modificado en el método `train_test_split`.

## Espías
Habrá ocasiones en las que lo que nos interesa es saber si hicimos llamados a funciones de terceros y
no probar estas funciones. Si confiamos en que estas funciones están bien hechas y probadas por sus
desarrolladores, a nosotros lo que nos podría interesar es saber si estamos haciendo el llamado de
ellas en la manera correcta. Para esos casos usamos espías. En las primeras líneas del siguiente
bloque de código podemos notar que tenemos un imitador, tema que atendimos en los tres ejemplos
anteriores. Al final de la prueba definimos un espía para la función `makedir` del módulo `os`:

```python
def test_Plotter_(mocker):
    delete_reports_figures()
    Parameters = mocker.Mock(spec=Predictions_and_Parameters)
    Parameters.data_for_plot.return_value = [1, 2, 3], [1, 2, 3]
    Plotter_parameters = Plotter(Parameters)
    Plotter_parameters.plot()
    makedirs = mocker.spy(os, "makedirs")
    Plotter_parameters.savefig("reports/figures/figura.png")
    makedirs.assert_called_once_with("reports/figures")
```
El método `savefig` de la clase `Plotter`. Y lo que nos interesa preguntarle al espía `makedirs` es
si fue llamado y si fue con el argumento `"reports/figures"`. El espía tiene su método para probar
esa información.

## Conclusión
Vimos cuatro ejemplos de usos de la paquetería `pytest-mock`: tres ejemplos de imitadores y uno de
espías. Los ejemplos son de cómo los usamos en la Dirección de Ciencia de Datos de GECI. Tratamos de seguir
las recomendaciones de Stargirl en la manera de nombrarlo y presentamos un ejemplo en donde no
agregar una interfaz no era _tan_ mala idea. Parchamos el comportamiento de una clase y finalmente
utilizamos espías para asegurarnos de que llamábamos a una función desarrollada por terceros de la
manera esperada. 
## Referencias
- [SOLID Object-Oriented Design](https://youtu.be/v-2yFMzxqwU)
- [My Python testing style guide](https://blog.thea.codes/my-python-testing-style-guide/)
- [pytest: How to mock in Python](https://changhsinlee.com/pytest-mock/)
- [Understanding the Python Mock Object Library](https://realpython.com/python-mock-library/)
- [pytest-mock](https://github.com/pytest-dev/pytest-mock/)
