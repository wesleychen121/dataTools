# Data Tools

This is a repository of data entry tools to help automate routine practices such as scraping data from documents and formatting it.

## pdfScraper.py
The PDF Scraper module is an application that scrapes a pdf and formats it according to the [Section 1983 Chicago Police Department Lawsuits Codebook](Docket_Sheet_Raw_Data_Codebook.docx).

### Features include

* Cleans up OCR errors including superfluous white space and misreads

* Eliminates newlines

* Formats names in the John Doe|Jane Doe format specified by the codebook

* Labels text by page

* Eliminates copy paste errors

## DataMacros.bas
The Data Macros module contains excel macros written in VBA that automatically populate cells according to the Codebook.

### Features include

* **RaymondSimon** - Fills in the name and address for Raymond Simon, a common attorney for defendants

* **NoJury** - Fills in all the info that can be assumed from No Jury trial

* **NoThirdNoA** - Enters No for Third_Party_Intervention and Appealed

* **FinalLiability** - Copies plaintiffs to final_liability cell

* **FinalJudgement** - Copies jury verdict text to the final judgement text cell

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Python 3.7
```
```
PyPDF4
```

### Installing

A step by step series of examples that tell you how to get a development env running

Step 1: Install Python 3

```
The latest version of Python can be found at: https://www.python.org/downloads/.
```

Step 2: Install PyPDF4

```
pip install PyPDF4
```

Step 3: Navigate to the correct directory

```
cd c:/Users/wesle/Downloads
```

Step 4: Start the desired process

```
"C:/Program Files/Python38/python.exe" "c:/Users/wesle/wtchen/personal projects/dataTools/pdfScraper.py"
```



## Built With

* [Python](https://www.python.org/downloads/)

## Authors

* **Wesley Chen** - *Initial work*