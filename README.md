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
    <li><a href="#repository-structure">Repository structure</a></li>
    <li><a href="#data">Data</a></li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#clone-repository-and-create-virtual-environment">Clone repository and create virtual environment</a></li>
        <li><a href="#download-data">Download data</a></li>
        <li><a href="#install-virtual-environment">Install virtual environment</a></li>
        <li><a href="#run-notebook">Run notebook</a></li>
        <li><a href="#perform-word-embedding-analysis">Perform word embedding analysis</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About the project

<!-- REPOSITORY STRUCTURE -->
## Repository structure
This repository has the following structure:

| File | Description|
|--------|:-------|
```data/dataset_1/``` | Folder to contain the 1st dataset (make sure to follow the section "_usage_" for data acquisition)
```data/dataset_2/``` | Folder to contain the 2nd dataset (make sure to follow the section "_usage_" for data acquisition)
```data/generated_data/cleaned_dataset_1``` | .csv file with dataset 1 after cleaning
```data/generated_data/cleaned_dataset_2``` | .csv file with dataset 2 after cleaning
```data/generated_data/fake_periods``` | .csv file with fake entries from dataset 2 after cleaning, chunked up into periods
```word_embeddings``` | Folder, containing
```datetime.ipynb``` | Notebook containing the processing and chunking of entries by dates in the fake labels for dataset 1, required for the word embedding analysis
```NLP_Exam_Synopsis.pdf``` | Written synopsis containing all relevant information regarding the project
```Analysis.ipynb```| Notebook containing the entire analysis, excluding the word embedding analysis
```requirements.txt```| Requirements file
```README.md```| This markdown

<!-- DATA -->
## Data
### Dataset 1
The analysis utilized the [Fake News dataset](https://www-uvic-ca.ez.statsbiblioteket.dk:12048/ecs/ece/isot/datasets/fake-news/index.php) from University of Victoria's research laboratory _Information security and object technology_ (ISOT). Access can be gained through an affiliaty university, or through [Kaggle](https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset) which also holds the dataset. The data had been acquired and first used by [Ahmed et al., (2017a); Ahmed et al., (2017b)](https://scholar.google.dk/scholar?hl=da&as_sdt=0%2C5&q=ahmed+et+al+fake+news+2017&btnG=)


### Dataset 2
The analysis also utilizes the [Fake News dataset](https://github.com/rpitrust/fakenewsdata1) by [Horne et al., (2017)](https://ojs.aaai.org/index.php/ICWSM/article/download/14976/14826). Access is open for anyone.

<!-- USAGE -->
## Usage

To use or reproduce our results you need to adopt the following steps.

**NOTE:** There may be slight variations depending on the terminal and operating system you use.  The following example is designed to work using GitBash on Windows 10. You also need to have _pip_ installed:

1. Clone repository
2. Download data
3. Install virtual environment
4. Run and inspect script

### Clone repository and create virtual environment

Clone repository and install virtual environment using the following lines in a unix-based bash:

```bash
git clone https:```//github.com/emiltj/NLP_exam_2021.git```
cd NLP_exam_2021
bash ```create_venv.sh```
```

### Download data
#### Dataset 1
Download dataset 1 from [Victoria university's Information security and object technology labs, website](https://www-uvic-ca.ez.statsbiblioteket.dk:12048/ecs/ece/isot/datasets/fake-news/index.php). Access can be gained through an affiliaty university or alternatively through [Kaggle](https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset) which also holds the dataset.

The .csv files from dataset 1 needs to be placed in the folder:
```NLP_exam_2021/data/dataset1```

#### Dataset 2
Download dataset 2 from [Fake News dataset](https://github.com/rpitrust/fakenewsdata1). Access is open for anyone.

The .csv files from dataset 2 in the folders:
```Horne2017_FakeNewsData/Public\ Data/Random\ Poltical\ News\ Dataset/Fake``` and 
```Horne2017_FakeNewsData/Public\ Data/Random\ Poltical\ News\ Dataset/Real``` 
needs to be placed in the folder:
```NLP_exam_2021/data/dataset2```

### Run notebook

Run notebook ```analysis.ipynb```

### Perform word embedding analysis 

Perform word embedding analysis by ???????????

<!-- LICENSE -->
## License
Distributed under the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0). See ```LICENSE``` for more information.


<!-- CONTACT -->
## Contact

Feel free to write the authors, [Emil Jessen](https://github.com/emiltj) or [Johan Horsmans](https://github.com/johanHorsmans) for any questions regarding the scripts.
You may do so through our emails ([Emil](mailto:201807525@post.au.dk), [Johan](mailto:201810219@post.au.dk))
<br />

<br />
<p align="center">
  <a href="https://github.com/emiltj/NLP_exam_2021">
    <img src="README_images/logo_au.png" alt="Logo" width="300" height="102">
  </a>

  <!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
  
Furthermore, we would like to extend our gratitude towards the following:
* [RStudio](https://www.rstudio.com/) - Software used for conducting the analysis
