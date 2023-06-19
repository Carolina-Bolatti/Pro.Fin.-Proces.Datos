# Proyecto de Finalización - Procesamiento de Datos - ISPC

## Comisión Sala 1 - Cohorte 2022

# GRUPO 2

## Integrantes:
* Alvarez, Agustín
* Bolatti Cristofaro, María Carolina
* de Rosario Boero, Aldana Mailén
* Galván, Sebastián Alejandro
* Octtinger, Martina
* Siccardi, Luis
* Vila, Mariano Raúl

## Datasets:
(2 tipos)
* https://www.kaggle.com/datasets/tejashvi14/employee-future-prediction
* https://www.kaggle.com/datasets/zeyadkhalid/mbti-personality-types-500-dataset

## Requerimientos:
Como el dataset de mbti supera los 100 MB hay instalar el git lfs para usar archivos grandes:
* https://docs.github.com/en/repositories/working-with-files/managing-large-files/configuring-git-large-file-storage


## VsCode

Crear entorono vitrual:

```
python -m venv venv
```

Insatar las dependencias:
```
pip install -r requirements.txt
```

Carga de datos de empleados:
```
import pandas as pd
empleados = pd.read_csv('data/Employee.csv')
print(empleados)
```