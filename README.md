# CS 6250 - Big Datas for Healthcare
## Project
Implement and expand on the paper: 

Improving clinical outcome predictions using convolution
over medical entities with multi-modal learning

### Details
Team E3

Vishal Nayak

Guru Raj Vaishnav Akuthota

## Prerequisites
Have MIMIC III GCP accessibility through physionet.


## Step 1. Environment Configuration

Create environment
```
conda env create -f environment.yml
```

Activate environment
```
conda activate cse6250-project
```

## Step 2. MIMIC-III Data

- Download [MIMIC-Extract data](https://console.cloud.google.com/storage/browser/mimic_extract) in GCP from the pipeline which is reprocessed by default parameters. Save the data `all_hourly_data.h5` under `data` folder.
- Save MIMIC-III csv data files `ADMISSIONS.csv`, `ICUSTAYS.csv`, `NOTEEVENTS.csv` in 
`data` folder.

## Step 3. Data Preparation
In this step, we extract time series features, select and preprocess clinical notes. Please run the Jupyter notebook:
```
00-preprocess-data.ipynb
```

## Step 4. Extract NER concepts and create different embedding representations. 
- Download `word2vec.model` and `fasttext.bin` from [here](https://gtvault-my.sharepoint.com/:f:/g/personal/vnayak9_gatech_edu/EudI5ziJoIFLnutvQL335HMBBvR17GW7Ic7IrMc3caawMQ?e=9f3z2p) and place them inside the `embeddings` folder.
- After that, please run the Jupyter notebook:
```
01-extract-embed-ner.ipynb
```

## Step 5. Prepare Time-Series Data.
Prepare data sets: traininng data, validation data, and testing data. Please run the Jupyter notebook:
```
02-prepare-timeseries-data.ipynb
```

## Step 6. Train Time-series Baseline model.
Please run the Jupyter notebook:
```
03-train-timeseries-baseline.ipynb
```

## Step 7. Train Multimodal Baseline model.
Please run the Jupyter notebook:
```
04-train-multimodal-baseline.ipynb
```

## Step 8. Train Proposed model.
Please run the Jupyter notebook:
```
05-train-proposed-model.ipynb
```

## Step 9. Evaluation.
Please run the Jupyter notebook:
```
06-evaluate-models.ipynb
```

# Inputs and Results.
Note that the following link can only be accessed via @gatech.edu email.
- Input data for the models is [here](https://gtvault-my.sharepoint.com/:f:/g/personal/vnayak9_gatech_edu/Ev2hz503dkpHhl1T2r1SVX8BxIj1lC3ZJKnmNolUXVR8MQ?e=efQg2b)
- Models are [here](https://gtvault-my.sharepoint.com/:f:/g/personal/vnayak9_gatech_edu/EkaXafnZRTZAjlA3cgy-CMcB8rb3a1CAlD5VVDZJraMD-g?e=qcHXAu)
- Results are [here](https://gtvault-my.sharepoint.com/:f:/g/personal/vnayak9_gatech_edu/EvDCiSyiNPlHl2JAsh-yDgcBePa_NE_4mOO2TNPQ_LVMnw?e=kitQ2v)
