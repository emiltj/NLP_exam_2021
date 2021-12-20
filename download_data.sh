#! /bin/sh

# This script will download the preprocessed data files

# Install gdown for download from drive folder
pip install gdown

# Go to folder
cd ./data/generated_data

# For each link in list of links, download to current folder
for f in https://drive.google.com/uc?id=1sV4YAGGb0kp5G5GMYLPGigI-wmMIlgCd https://drive.google.com/uc?id=1hra_pkqy48NcbKBNbs252gtJIuis36j0 https://drive.google.com/uc?id=14119Vo3KwLqfLRKU9SqW4ljqcLjdK-PJ; do gdown $f; done

# Go to folder, download and unzip
cd ./data/dataset_1
gdown https://drive.google.com/uc?id=1MNnZS52KWGC6BB1WaS81NV8yprYRDcAf
unzip News_dataset.zip
rm -r News_dataset.zip

# Go to folder, download and unzip
cd ../data/dataset_2/fake
gdown https://drive.google.com/uc?id=1B-pBxRaQMrGq4mJbf08Cil6NYIfpCr6Y
unzip fake.zip
rm -r fake.zip

cd ../data/dataset_2/real
gdown https://drive.google.com/uc?id=1aw8OssyIbdfuAB1iocpib3h-2ioA__RY
unzip real.zip
rm -r real.zip

# Go to folder
cd ../../word_embeddings/output/texts

# For each link in list of links, download to current folder
for f in https://drive.google.com/uc?id=1DekmTDnSCM-iagSJad8Ayr0k_MO_ueNV https://drive.google.com/uc?id=10V7G7lQbi4xyLQ_28xcTaXU8VoUag4fT https://drive.google.com/uc?id=1tIuQ9ghHWpM2vcMHHJWi47XyfZW1gsqS https://drive.google.com/uc?id=1bK8dctrVaiVdLdiBNtoN-xTDAiwn4to2 https://drive.google.com/uc?id=1jUYGs6Y_8MQpQQF9G-e8VHnzJpl6qbHC; do gdown $f; done

# Go back to parent directory
cd ../../..
 
# Give information on the success of the script in the terminal
echo "The required data has been downloaded successfully"
