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
        <li><a href="#clone-repository-and-install-packages">Clone repository and install packages</a></li>
        <li><a href="#download-data">Download data</a></li>
        <li><a href="#run-classification-analysis">Run classification analysis</a></li>
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
This project assesses the generalizability of fake news detection algorithms, focussing on data quantity and quality. We do this by firstly training and cross-testing BERT models on two very different datasets; one large dataset of relatively poor quality and another which contains significantly fewer entries but of higher quality. Secondly, we investigate the non-staticity of the task by performing an analysis of dynamic word embeddings over time.


<!-- USAGE -->
## Usage

To use or reproduce our results you need to adopt the following steps.

**NOTE:** There may be slight variations depending on the terminal and operating system you use. The following example is designed to work using the JupyterNotebook Latex application on UCloud. The terminal code should therefore work using a unix-based bash. Nonetheless, if you use a different IDE or operating system, there may be slight variations and hiccups. Furthermore, it requires that pip is installed and you may also want to create a new virtual environment for this project.

1. Clone repository
2. Download data and packages
3. Run classification analysis
4. Run word embedding analysis

### Clone repository and install packages

Clone repository and install the required packages using the following lines in the unix-based bash:

```bash
git clone https://github.com/emiltj/NLP_exam_2021.git
cd NLP_exam_2021
pip install -r requirements.txt
```

### Download data

To replicate our results, we have included a bash script that automatically creates folders for the data (both raw and preprocessed) and retrieves it.
Follow the code below:

```bash
cd NLP_exam_2021
bash download_data.sh
```

### Run classification analysis

Run notebook ```Analysis.ipynb```*

\* If you are using the preprocessed data, you may simply choose to skip all chunks in the script called "preprocessing" and proceed from the point where the preprocessed data is loaded. Furthermore, due to file-size constraints, the fine-tuned BERT models are not included in this repository and, therefore, need to be trained from scratch. If you wish to retrieve the fine-tuned models, please reach out.

### Perform word embedding analysis

Perform word embedding analysis by running the following in your unix-type bash:

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
│   Analysis.pdf
│   download_preprocessed.sh
│   LICENSE
│   README.md
│   requirements.txt
│
├───data
│   ├───dataset_1
│   │       fake.csv*
│   │       real.csv*
│   │
│   ├───dataset_2
│   │       *.csv*
│   │       
│   │
│   └───generated_data
│           .gitkeep
│           cleaned_dataset_1.csv*
│           cleaned_dataset_2.csv*
│           fake_periods.csv*
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
    │   raw.txt*
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
        │
        └───texts
                0010.txt*
                0020.txt*
                0030.txt*
                0040.txt*
                0050.txt*
```
\* These files are not found within this repository, but rather acquired through the steps under the section _usage_.

<!-- DATA -->
## Data

For more exhaustive information on the data, see ```NLP_Exam_Synopsis.pdf``` and the original papers.

The raw data for the analysis has originally been retrieved from the links below:

### Dataset 1
The analysis utilized the [Fake News dataset](https://www-uvic-ca.ez.statsbiblioteket.dk:12048/ecs/ece/isot/datasets/fake-news/index.php) from University of Victoria's research laboratory _Information security and object technology_ (ISOT). Access can be gained through an affiliaty university, or through [Kaggle](https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset) which also holds the dataset. The data had been acquired and first used by [Ahmed et al., (2017a); Ahmed et al., (2017b)](https://scholar.google.dk/scholar?hl=da&as_sdt=0%2C5&q=ahmed+et+al+fake+news+2017&btnG=)

### Dataset 2
The analysis also utilizes the [Fake News dataset](https://github.com/rpitrust/fakenewsdata1) by [Horne et al., (2017)](https://ojs.aaai.org/index.php/ICWSM/article/download/14976/14826). Access is open for anyone.

<!-- LICENSE -->
## License
Distributed under the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0). See ```LICENSE``` for more information.

<!-- CONTACT -->
## Contact

Feel free to contact the authors, [Emil Jessen](https://github.com/emiltj) or [Johan Horsmans](https://github.com/johanHorsmans) for any questions regarding the scripts.
You may do so through our emails ([Emil](mailto:201807525@post.au.dk), [Johan](mailto:201810219@post.au.dk))
<br />

  <!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
  
Furthermore, we would like to extend our gratitude towards the following:
* [Barzokas et al. (2019/2021)](https://github.com/intelligence-csd-auth-gr/greek-words-evolution) - Original authors of the repository with the implemented overall framework for our word embedding analysis.
* Horne et al. (2017) for providing data.
* Ahmed et al., (2017a); Ahmed et al., (2017b) for providing data.

<br />
<p align="center">
  <a href="https://github.com/emiltj/NLP_exam_2021">
    <img src="README_images/logo_au.png" alt="Logo" width="300" height="102">
  </a>

