# models
wget https://zenodo.org/record/3693810/files/models.zip?download=1
mv models.zip?download=1  models.zip
unzip models.zip -d ./models
rm models.zip

#unmodifyed data
wget https://zenodo.org/record/3693810/files/sentiment-data-reviews-and-neutral.zip?download=1
mv sentiment-data-reviews-and-neutral.zip?download=1 sentiment-data-reviews-and-neutral.zip
unzip sentiment-data-reviews-and-neutral.zip -d ./source-data
rm sentiment-data-reviews-and-neutral.zip

#training data
wget https://zenodo.org/record/3693810/files/no-scare-balanced.zip?download=1
wget https://zenodo.org/record/3693810/files/no-scare-balanced.zip?download=1 
mv  no-scare-balanced.zip?download=1  no-scare-balanced.zip 
unzip no-scare-balanced.zip -d ./training-data
rm no-scare-balanced.zip

#restore german bert vectors
mkdir bert/bert-base-german-cased
mkdir -p bert/bert-base-german-cased
cd bert/bert-base-german-cased
wget https://int-deepset-models-bert.s3.eu-central-1.amazonaws.com/pytorch/bert-base-german-cased-config.json -O bert_config.json
wget https://int-deepset-models-bert.s3.eu-central-1.amazonaws.com/pytorch/bert-base-german-cased-vocab.txt -O vocab.txt
wget https://int-deepset-models-bert.s3.eu-central-1.amazonaws.com/pytorch/bert-base-german-cased-pytorch_model.bin -O pytorch_model.bin
