---
layout: post
title: Imitadores y espías
author: Nepo
tags: pruebas
---
El código siguiente los podrán encontrar en el `pollos_petrel/tests/tests_petrel_age_predictor.py`.
El objetivo es probar a la función `get_subset_morphometric_data`. Esta función tiene dos variables
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
Para seguir con el objetivo principal (probar `get_subset_morphometric_data`) y no desviarnos con la
implementación de las clases a la que pertenecen `Cleaner_Morphometric` y `Predictor` haremos uso de
los imitadores más generales utilizando `mocker.Mock()`:
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
[Stargir](https://thea.codes/) sugiere que no usemos este tipo de imitadores. El motivo es que si al
implementar las clases cambiamos las interfaces la prueba no se enterará del cambio y por lo tanto
no fallará.

## Referencias
- [My Python testing style guide](https://blog.thea.codes/my-python-testing-style-guide/)
- [pytest: How to mock in Python](https://changhsinlee.com/pytest-mock/)
