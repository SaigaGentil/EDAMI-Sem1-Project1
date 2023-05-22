# LaTeX Report - Generating non-redundant Association Rules based on Closed Frequent Itemsets

---

| Project Description                                      |
|---------------------------------------------------------|
| **Author:** Bruno Axel Kamere                                   |
| **Supervisor:** Rober Bembenik, PhD                                   |
| **Course:** Data Mining (103B-CSCSN-MSA-EDAMI)  |
| **University:** Warsaw University of Technology  |
| **Faculty:** Faculty of Electronics and Information Technology  |
| **Programme:** Master of Science in Computer Science and Networks (Msc. CSN)  |
| **Project Title:** Generating Non-Redundant Association Rules based on Closed Frequent Itemsets using the Charm Algorithm |
| **Project Implementation Period:** Summer Semester 2022/2023                    |
| **Description:**                                         |
| This project aims to develop a solution for generating non-redundant association rules based on closed frequent itemsets. The Charm algorithm will be implemented and extended to improve the interpretability and usefulness of the mining results. The project will focus on efficient data handling and provide an intuitive interface for interacting with the mining outcomes. The performance and effectiveness of the proposed approach will be thoroughly evaluated. The results of this project will contribute to market basket analysis, customer behavior analysis, and recommendation systems. |
| **Key Features:**                                        |
| - Efficient mining of closed frequent itemsets           |
| - Generation of non-redundant association rules          |
| - Handling of large-scale datasets                       |
| **Objectives:**                                          |
| - Implement the Charm algorithm for closed frequent itemset mining |
| - Extend the algorithm to generate non-redundant association rules |
| - Develop efficient data structures and algorithms       |
| - Provide a user-friendly interface for interaction      |
| **Expected Outcome:**                                    |
| A robust solution for generating non-redundant association rules from closed frequent itemsets, improving the interpretability of mining results and enabling informed decision-making based on valuable insights. |

---

## Introduction

The aim of this project is to develop a solution for generating non-redundant association rules based on closed frequent itemsets. Association rule mining is a widely used technique in data mining and machine learning that aims to discover interesting relationships and patterns within large datasets. By identifying frequently co-occurring items, association rule mining can provide valuable insights and support decision-making processes in various domains.

However, traditional association rule mining approaches often generate a vast number of rules, many of which are redundant or irrelevant. Redundant rules can overwhelm users, making it difficult to extract meaningful and actionable knowledge from the results. This project tackles this challenge by leveraging the Charm algorithm, a powerful method for mining closed frequent itemsets.

The Charm algorithm is an efficient and effective approach for mining closed frequent itemsets, which are subsets of items that have the property of being "closed" under the given support threshold. Closed frequent itemsets capture all the maximal frequent patterns in the dataset, avoiding redundancy and providing a concise representation of the underlying associations.

In this project, we will implement the Charm algorithm and extend it to generate non-redundant association rules from the closed frequent itemsets. By eliminating redundant rules, we can improve the interpretability and usefulness of the mining results, enabling users to focus on the most interesting and informative patterns.

## Key Objectives

- Implementing the Charm algorithm for mining closed frequent itemsets.
- Extending the algorithm to generate non-redundant association rules.
- Developing efficient data structures and algorithms to handle large-scale datasets.
- Providing an intuitive and user-friendly interface for interacting with the mining results.
- Conducting thorough experiments and evaluations to assess the performance and effectiveness of the proposed approach.

## Dataset Used

<http://fimi.uantwerpen.be/data/accidents.pdf>

## Approach

TODO: Add content

## User's Manual

This report is build based on LaTeX. LaTeX is a high-quality typesetting system; it includes features designed for the production of technical and scientific documentation. LaTeX is the de facto standard for the communication and publication of scientific documents. LaTeX is available as free software.

This report is structured like so:

```bash
.
├── 10.Introduction
│   ├── Figures
│   ├── introduction.aux
│   ├── introduction.tex
│   └── MS Word
├── 20.Solution Description
│   ├── MS Word
│   ├── solution_description.aux
│   └── solution_description.tex
├── 30.Implementation Description
│   ├── implementation_description.aux
│   ├── implementation_description.tex
│   └── MS Word
├── 40.User's Manual
│   ├── MS Word
│   ├── user_manual.aux
│   └── user_manual.tex
├── 50.Dataset Description
│   ├── dataset_description.aux
│   ├── dataset_description.tex
│   └── MS Word
├── 60.Results
│   ├── MS Word
│   ├── results.aux
│   └── results.tex
├── 70.Conclusion
│   ├── conclusion.aux
│   ├── conclusion.tex
│   └── MS Word
├── bibliography.bib
├── compile_report.sh
├── config
│   ├── classes
│   │   └── config_report.cls
│   ├── code
│   ├── images
│   │   ├── header-eng.png
│   │   └── logopw.png
│   └── pdf
├── main.bcf
├── main.fdb_latexmk
├── main.lol
├── main.pdf
├── main.run.xml
├── main.synctex.gz
├── main.tex
├── _minted-main
└── README.md
```

The main file is the `main.tex` file. This file is the one passed on the compilation command of LaTeX. The file includes classes used to style the document as well as additional `.tex` files containing the actual contents of the documents per chapter.

## Windows (WSL, Ubuntu) - Installation Instructions

Below are the setup instructions to be able to compile LaTeX files.

### 1. Install Packages

Install all dependencies in WSL. Below are commands to do so.

```bash
sudo apt-get install texlive-latex-base texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra
sudo apt-get install texlive-bibtex-extra biber texlive-fonts-extra
# Install python pip
apt install python3-pip
# Install Pigments for mint package
pip install Pygments
```

TODO: Create a `setup-latex.sh` script and add the above.

### 2. Compile the documents

To compile the document, execute the script `./compile_report.sh compile main.tex`. This command will compile the document with the `main.tex` file being the input file parameter. The output will be a `main.pdf` file along with other `main.*` files

### 3. Clean up

To clean up unnecessary files, execute the `./compile_report.sh clean` command. This will clean up some unnecessary `main.*` files as specified in the `./compile_report.sh` script.

## Initial LaTeX Setup
