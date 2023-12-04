#!/usr/bin

#Download the input file from provided data folder
./fasttext skipgram -input fasttext_input_MIMIC_clinical_notes.txt -output ../../embeddings/MIMIC100_skipgram -lr 0.01 -epoch 100 -ws 5 -neg 10 -minn 5 -maxn 5
