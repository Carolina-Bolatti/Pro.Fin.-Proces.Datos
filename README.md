![ProcesamientoDeDatosBanner](https://github.com/Carolina-Bolatti/Pro.Fin.-Proces.Datos/assets/105814132/5023ef12-6b6a-4671-bcbd-30c84e0193d8)

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

## Reportes:
* https://drive.google.com/file/d/1rsTAg3ZC2-ggwnlNGQqK6enVQ9DvdPpK/view?usp=share_link
* https://drive.google.com/file/d/1DzzCGrHSEerQkIOSMfsUE9UbhXGQcbuG/view?usp=share_link

## Requerimientos:
Como el dataset de mbti supera los 100 MB hay instalar el git lfs para usar archivos grandes:
* https://docs.github.com/en/repositories/working-with-files/managing-large-files/configuring-git-large-file-storage

## Colab
```
# instalacion de pandas
!python -V
!pip -V
!pip install pandas==1.5.3
```

```
# Clonacion de repositorio
from google.colab import drive
drive.mount('/content/drive')
! ls 'drive/MyDrive/Colab Notebooks/ProcesamientoDeDatos'
! cd 'drive/MyDrive/Colab Notebooks/ProcesamientoDeDatos'
! git clone https://github.com/Carolina-Bolatti/Pro.Fin.-Proces.Datos.git
```

```
# Actualizacion con github
from google.colab import drive
drive.mount('/content/drive')
%cd 'Pro.Fin.-Proces.Datos'
!git lfs install
!git lfs fetch
!git lfs pull
!git pull
!ls -lisa
```

```
# Chequeo que tenemos los datos
from google.colab import drive
drive.mount('/content/drive')
%cd 'Pro.Fin.-Proces.Datos'
!git lfs install
!ls -lrt data
!head -2 data/*
```

```
# Carga de datos de empleo
from google.colab import drive
drive.mount('/content/drive')
!ls
import pandas as pd
empleados = pd.read_csv('data/Employee.csv')
print(empleados)

```

## VsCode

Crear entorono vitrual y activarlo:

```
python -m venv venv
```
```
venv\Script\activate
```

Insatar las dependencias:
```
pip install -r requirements.txt
```
