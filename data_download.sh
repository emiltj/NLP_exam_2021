#! /bin/sh

# This script will download: Data files, post-preprocessing

# Install gdown for download from drive folder
pip install gdown

# Make a data folder
mkdir './data/generated_data'
mkdir './word_embeddings/output/texts/

# Go to new data folder
cd ./data/generated_data

# For each link in list of links, download to current folder
for f in https://drive.google.com/uc?id=1sV4YAGGb0kp5G5GMYLPGigI-wmMIlgCd https://drive.google.com/uc?id=1hra_pkqy48NcbKBNbs252gtJIuis36j0 https://drive.google.com/uc?id=14119Vo3KwLqfLRKU9SqW4ljqcLjdK-PJ; do gdown $f; done

# Go to new data folder
cd .../word_embeddings/output/texts

# For each link in list of links, download to current folder
for f in https://drive.google.com/uc?id=1DekmTDnSCM-iagSJad8Ayr0k_MO_ueNV https://drive.google.com/uc?id=10V7G7lQbi4xyLQ_28xcTaXU8VoUag4fT https://drive.google.com/uc?id=1tIuQ9ghHWpM2vcMHHJWi47XyfZW1gsqS https://drive.google.com/uc?id=1bK8dctrVaiVdLdiBNtoN-xTDAiwn4to2 https://drive.google.com/uc?id=1jUYGs6Y_8MQpQQF9G-e8VHnzJpl6qbHC; do gdown $f; done

# Go back to parent directory
cd ....
 
# Give information on the success of the script in the terminal
echo "The required data has been downloaded successfully"
