<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/emiltj/NLP_exam_2021">
    <img src="README_images/nlp2.png" alt="Logo" width=150 height=150>
  </a>
  
  <h1 align="center">Natural Language Processing Exam</h1> 
  <h3 align="center">Cognitive Science Master's 2021</h3> 


  <p align="center">
    Emil Trenckner Jessen & Johan Kresten Horsmans
    <br />
    <a href="https://github.com/emiltj/NLP_exam_2021/blob/main/NLP_Exam_Synopsis.pdf"><strong>Link to synopsis »</strong></a>
    <br />
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About the project</a>
    </li>
          <a href="#usage">Usage</a>
      <ul>
        <li><a href="#clone-repository-and-create-virtual-environment">Clone repository and create virtual environment</a></li>
        <li><a href="#download-data">Download data</a></li>
        <li><a href="#install-virtual-environment">Install virtual environment</a></li>
        <li><a href="#run-notebook">Run notebook</a></li>
        <li><a href="#perform-word-embedding-analysis">Perform word embedding analysis</a></li>
      </ul>
    </li>
    <li><a href="#repository-structure">Repository structure</a></li>
    <li><a href="#data">Data</a></li>
    <ul>
      <li><a href="#dataset-1">Dataset 1</a></li>
      <li><a href="#dataset-2">Dataset 2</a></li>
    </ul>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About the project
This project assesses the generalizability of fake news detection algorithms, focussing on data quantity and quality. We do this by firstly training and cross-testing BERT models on two very different datasets; one large dataset of relatively poor quality and another which contains significantly fewer entries but of higher quality. Secondly, we investigate future prospects within the field. To do this, we discuss the findings of our cross-testing and evaluating the importance of accommodating the non-staticity of the task; in part by performing an analysis of word embeddings over time.


<!-- USAGE -->
## Usage

To use or reproduce our results you need to adopt the following steps.

**NOTE:** There may be slight variations depending on the terminal and operating system you use. The following example is designed to work using a JupyterNotebook Latex application on UCloud. You may also want to create a new virtual environment for this project.

1. Clone repository
2. Download data and create virtual environment
3. Install virtual environment
4. Run and inspect script

### Clone repository and create virtual environment

Clone repository and install virtual environment using the following lines in a unix-based bash:

```bash
git clone https://github.com/emiltj/NLP_exam_2021.git
cd NLP_exam_2021
pip install -r requirements.txt
```

### Download data

To replicate our results, we have included a bash script that automatically creates folders for the preprocessed data and retrieves it.
Follow the code below:

```bash
cd NLP_exam_2021
bash download_data.sh
```

If you want to access the original data and perform preprocessing yourself, you may use the links below:

#### Dataset 1
Download dataset 1 from [Victoria university's Information security and object technology labs, website](https://www-uvic-ca.ez.statsbiblioteket.dk:12048/ecs/ece/isot/datasets/fake-news/index.php). Access can be gained through an affiliaty university or alternatively through [Kaggle](https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset) which also holds the dataset.

The .csv files from dataset 1 needs to be placed in the folder:
```NLP_exam_2021/data/dataset_1```


#### Dataset 2
Download dataset 2 from [Fake News dataset](https://github.com/rpitrust/fakenewsdata1). Access is open for anyone.

The .csv files from dataset 2 in the folders:
```Horne2017_FakeNewsData/Public\ Data/Random\ Poltical\ News\ Dataset/Fake``` and 
```Horne2017_FakeNewsData/Public\ Data/Random\ Poltical\ News\ Dataset/Real``` 
needs to be placed in the folder:
```NLP_exam_2021/data/dataset_2```

### Run notebook

Run notebook ```Analysis.ipynb```*

\* If you are using the preprocessed data, you may simply choose to skip all chunks within "preprocessing" in the script

### Perform word embedding analysis

Perform word embedding analysis by running the following in your unix-type bash

```bash
cd word_embeddings/
git clone https://github.com/JohanHorsmans/fastText.git
cd fastText 
make
pip install .
cd ..

# Train models by doing the following:
python we.py model --action create

# Find words with highest cosine distance between first and last period (note that this creates a new file "raw.txt", that needs inspecting):
python we.py model --action getCD --fromYear 0010 --toYear 0050

# Get nearest neighbours for given word, in a given period:
python we.py model --action getNN --word [WORD] --period 0010
```


<!-- REPOSITORY STRUCTURE -->
## Repository structure
This repository has the following structure:
```
│   Analysis.ipynb
│   download_preprocessed.sh
│   LICENSE
│   README.md
│   requirements.txt
│
├───data
│   ├───dataset_1
│   │       .gitkeep
│   │
│   ├───dataset_2
│   │       .gitkeep
│   │
│   └───generated_data
│           .gitkeep
│           cleaned_dataset_1.csv
│           cleaned_dataset_2.csv
│           fake_periods.csv
│
├───README_images
│       logo_au.png
│       nlp2.png
│
└───word_embeddings
    │   .DS_Store
    │   LICENSE
    │   setup.cfg
    │   we.py
    │
    ├───lib
    │   │   .DS_Store
    │   │   file.py
    │   │   metadata.py
    │   │   model.py
    │   │   text.py
    │   │   vector.py
    │   │   website.py
    │   │   __init__.py
    │   │
    │   └───websites
    │           openbook.py
    │           __init__.py
    │
    └───output
        ├───models
        │       .gitkeep
        │
        └───texts
                .gitkeep
                0010.txt
                0020.txt
                0030.txt
                0040.txt
                0050.txt
```


| File | Description|
|--------|:-------|
```data/dataset_1/``` | Folder to contain the 1st dataset (make sure to follow the section "_usage_" for data acquisition)
```data/dataset_2/``` | Folder to contain the 2nd dataset (make sure to follow the section "_usage_" for data acquisition)
```data/generated_data/``` | Folder to contain the 1st and 2nd dataset after cleaning, as well as a .csv file with fake entries from dataset 2 after cleaning, chunked up into periods (make sure to follow the section "_usage_").
```word_embeddings/we.py``` | .py script, for running the word embedding analysis
```word_embeddings/output/texts/``` | Folder, containing ******************* Johan what is the structure here?
```word_embeddings/output/models/``` | Folder, containing ******************* Johan what is the structure here?
```datetime.ipynb``` | Notebook containing the processing and chunking of entries by dates in the fake labels for dataset 1, required for the word embedding analysis
```NLP_Exam_Synopsis.pdf``` | Written synopsis containing all relevant information regarding the project
```Analysis.ipynb```| Notebook containing the entire analysis, excluding the word embedding analysis
```requirements.txt```| Requirements file
```download_preprocessed.sh```| Bash scripts that automatically downloads the preprocessed files needed for the analysis
```.gitignore```| .gitignore file specifying that data and virtual environment ought to be excluded from GitHub handling
```README.md```| This markdown

<!-- DATA -->
## Data

For more exhaustive information on the data, see ```NLP_Exam_Synopsis.pdf``` and the original papers.

### Dataset 1
The analysis utilized the [Fake News dataset](https://www-uvic-ca.ez.statsbiblioteket.dk:12048/ecs/ece/isot/datasets/fake-news/index.php) from University of Victoria's research laboratory _Information security and object technology_ (ISOT). Access can be gained through an affiliaty university, or through [Kaggle](https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset) which also holds the dataset. The data had been acquired and first used by [Ahmed et al., (2017a); Ahmed et al., (2017b)](https://scholar.google.dk/scholar?hl=da&as_sdt=0%2C5&q=ahmed+et+al+fake+news+2017&btnG=)

### Dataset 2
The analysis also utilizes the [Fake News dataset](https://github.com/rpitrust/fakenewsdata1) by [Horne et al., (2017)](https://ojs.aaai.org/index.php/ICWSM/article/download/14976/14826). Access is open for anyone.

<!-- LICENSE -->
## License
Distributed under the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0). See ```LICENSE``` for more information.

<!-- CONTACT -->
## Contact

Feel free to write the authors, [Emil Jessen](https://github.com/emiltj) or [Johan Horsmans](https://github.com/johanHorsmans) for any questions regarding the scripts.
You may do so through our emails ([Emil](mailto:201807525@post.au.dk), [Johan](mailto:201810219@post.au.dk))
<br />

  <!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
  
Furthermore, we would like to extend our gratitude towards the following:
* [Vassilis Barzokas et al.](https://github.com/intelligence-csd-auth-gr/greek-words-evolution) - Original authors of the repository with the implemented overall framework for our word embedding analysis

<br />
<p align="center">
  <a href="https://github.com/emiltj/NLP_exam_2021">
    <img src="README_images/logo_au.png" alt="Logo" width="300" height="102">
  </a>

