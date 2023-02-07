# Session 4 | 31.10.2022 - Application and other languages

***Disclaimer:*** *This page offers supporting material for an Interaction Design course held at [KISD](https://kisd.de) in the winter term 2022/23. Visit the [landing page](https://github.com/KISDinteractive/fundamentals22w) of this course for more information.*

## 4.1 Application: Creature 2.0

In the first 90 minutes of session 4, we applied what we had learned so far: the participants were asked to animate their creatures from the first session or to make them interactive in order to practise the use of code.

|                                                              |                                                              |                                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="img/exercise/exercise_creature_1.gif" width="80%"> | <img src="img/exercise/exercise_creature_2.gif" width="60%"> | <img src="img/exercise/exercise_creature_3.gif" width="80%"> |
| <img src="img/exercise/exercise_creature_4.gif" width="100%"> | <img src="img/exercise/exercise_creature_5.gif" width="80%"> | <img src="img/exercise/exercise_creature_6.gif" width="80%"> |
| <img src="img/exercise/exercise_creature_7.gif" width="80%"> | <img src="img/exercise/exercise_creature_8.gif" width="80%"> | <img src="img/exercise/exercise_creature_9.gif" width="80%"> |
| <img src="img/exercise/exercise_creature_10.gif" width="80%"> | <img src="img/exercise/exercise_creature_11.gif" width="80%"> |                                                              |

## 4.2 Classes & Objects

Classes and objects are a more advanced way of organising code and are the basis of a programming paradigm called **Object-Oriented Programming** (or OOP for short). There, programmers use Objects in order to structure code and recreate models of systems they want to depict. Objects themselves are structures that are as **encapsulated** as possible to avoid unwanted interference with other variables, functions or other objects.

We have already learned about **variables**, which have a data type and contain data, and **functions**, which contain behaviour. Classes and objects are **complex data structures.** They have their own data type and can hold variables AND behaviour. Variables that belong to objects are called **attributes**, while functions that belong to objects are called **methods**.

Classes and objects belong together. **Classes are the definition of the structure and are like a blueprint for the objects created. A good metaphor is a cookie cutter. **Objects, on the other hand, are the instances of classes that need to be created specifically according to the blueprint - the cookies themselves.

Classes and objects are the main drivers for extending functionality in many programming languages. They are usually packaged in libraries that users can install and include in their programming sketches. If a user wants to reference a particular class to create a particular object, the corresponding library must be installed and included, otherwise the language won't "know" the class and won't be able to create an instance of it. In Processing there is an easy to use library manager under *Sketch -> Include Library -> Manage Libraries*.

## 4.3 Integrated Development Environments (IDEs)

### From source code to executables: IDEs

So far in this course we have only

- opened some software
- written code
- and pressed the play button.

But: as we learned in 4.2, coding projects often have more than one code file. There might be:

- Functions and classes in separate files
- Data or audio files
- Libraries and other dependencies we have installed

All these **source code files** need to be **written and edited, tested and debugged**. If everything works, there is one more big step to get an executable application, which we will talk about in the next session: **compile, assemble and link**. All these steps are usually done in an IDE (Integrated Development Environment):

![src_to_app](img/src_to_app.jpg)

### Some of the Most Important IDEs

We **will or have used the bold** ones in this course

#### Local and universal

- **VSCode** **/** VSCodium
- Eclipse
- NetBeans
- IntelliJ IDEA
- Sublime Text 3
- (Atom) discontinued!
- Xcode

#### For Browsers / Online

- **Jupyter** **Labs / Notebook**
- CodeTasty
- CodeSandbox
- Gitpod (Github)
- Github Codespaces (Github)
- JSFiddle (JavaScript)
- **P5Js** (P5Js)
- Codevny (Python)
- *Many more **mini-IDEs** for specific languages on the internet!*

#### Specific Language/Use

- **Processing** (Processing)
- **Arduino** (Arduino)
- Thonny (Python)
- RStudio (R language)

## 4.4 Transfer to Python

### Difference between Programming Languages and Scripting Languages

Not all languages need to be compiled! Some use **interpreters** (pieces of software) to execute source code directly. These are called **scripting languages**:

- First install the software (interpreter)
- Write code file or even lines in terminal
- Run it!

### Transfer to Python

Python is one of those scripting languages! We will now transfer our coding skills to Python. The facts:

- First released in 1994
- Simple syntax, emphasis on natural language, modular
- Aim was: fun to use (→ name inspired by "Monty Python", not the snake)
- **Can** lead to errors in code execution that a compiler would have foreseen
- **May** result in poorer performing code

**Python's philosophy** can be read in the language's guiding principles called [Zen of Python](https://peps.python.org/pep-0020/)

#### Getting to Know the Syntax

First, check that you have Python installed on your machine: Open a terminal and type

`python --version`

If a version number appears, you are ready to go. Otherwise, install python by first downloading and running the installer from python.org. See also [code file](src/Python_Intro/Python_FirstStepsInShell.py)

```python
# First steps in python in the shell
# Open a unix shell:

python #enter the python command prompt
myText = "Hello KISD!" #save some text to a variable
print(myText) #print the variable
myText #just show the variable
mySecondText #easy understandable error descriptions!

myNumber = 2 #make an integer
myDecNumber = 2.5 #make a number with decimal point (float)
myCalc = myNumber * myDecNumber #do a calcuclation
myCalc #show output

#go to google and search for "python type of variable"
#we learn: there is a "type()" command!
type(myCalc) # → ah,it's a float! 
type(myNumber) # → ah it's a int!
```

### Python in Jupyter Notebooks

Recently, Python has become very popular for data science and machine learning. For this purpose, it is often used in so-called **Jupyter Notebooks**. First released in 2014, these "notebooks" are developed by **Project Jupyter** (a non-profit organisation) and are open source. "Notebooks are code documents, but with some special features and embedded in a special workflow:

- Mostly used in the **JupyterLabs** IDE
  - Running in the Browser
  - Often on remote servers (services)
  - Notebooks are easily portable, as the requirements are often already pre-installed on the servers
- Notebooks have special features:
  - Special structure: code in cells → executed one by one
  - Input (as usual): code in Python (or other languages)
  - Output (in the same file): calculation results, plots, …
  - Markdown (in the same file): Formatted text documentation

#### Ways to use Jupyter **Notebooks**

- Install **locally**, run in browser
- Install the VSCode plugin
- Come to the Living Objects Lab at KISD
- Use online services like:
  - Jupyter.org/try
  - MyBinder
  - Kaggle Kernels
  - Google Colaboratories
  - Microsoft Azure Notebooks
  - CoCalc
  - ...

### Examples in Jupyter Notebook

For testing purposes we went to https://jupyter.org/try and opened a new "JupyterLab"

First we discovered the Jupyter interface - then we tested some code from the first steps in the terminal and got familiar with the way to execute code by running one cell after another.

#### Example 1 – Plotting a Parable

Showing a plot of a square parable is pretty straightforward in Python (would be more difficult in editing). Just upload the [Jupyter Notebook file](src/Python_Intro/JupyterNotebookIntro.ipynb) to your JupyterLab instance.

```python
from matplotlib import pyplot as plt
y=[]
for x in range (-10000, 10000):
    y.append(x**2)
plt.plot(y)
plt.show()
```

![jupyter_parable](img/jupyter_parable.jpg)

#### Example 2 – plotting some data from a csv

For this example we used data about covid infections from the [RKI](https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Projekte_RKI/Nowcasting_Zahlen_csv.html) (also placed in this [repo](src/Python_Intro/Nowcast_R_aktuell.csv)) and plotted a simple graph of the infections. See also the [Jupyter Notebook file](src/Python_Intro/PlotGermanCovidData.ipynb)

```python
import pandas as pd
from matplotlib import pyplot as plt
covidData=pd.read_csv('Metadatenschema-csv.csv')
covidData
xValues = range(len(covidData['Datum']))
yValues = covidData['PS_COVID_Faelle']
plt.plot(xValues, yValues)
plt.show()
```

![jupyter_dataFromCSV](img/jupyter_dataFromCSV.jpg)
