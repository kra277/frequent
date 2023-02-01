# Downloading files using wget
wget -r -np -nH --cut-dirs=3 -R index.html html_link

# Copy files from subfolders and add them to fastq_raw folder

## Make new folder
mkdir fastq_raw

## copy pattern and paste to new folder
find . -name *.fastq.gz -type f -exec cp {} fastq_raw/ \;