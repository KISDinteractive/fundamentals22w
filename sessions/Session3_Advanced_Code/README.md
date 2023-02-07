# Session 3 | 24.10.2022 - Advanced Code

***Disclaimer:*** *This page offers supporting material for an Interaction Design course held at [KISD](https://kisd.de) in the winter term 2022/23. Visit the [landing page](https://github.com/KISDinteractive/fundamentals22w) of this course for more information.*

**Links for the Session**

- [We started this session with the code of the previous one](src/Code1_grid/Code1_grid.pde)

## 2.5 Closing the Previous Loops-Session

We didn't finish the previous session on loops, so here we go:

### for-loop vs. while loop

We've learnt how to use the for-loop. There is a second type of loop, the **while-loop**, which does basically the same thing. Here are some differences and the implementation:

![while-loop](img/while-loop.jpg)



### Nested Loops

Finally, we looked at the concept of nested loops. How could we create something like this (called a "matrix" of circles)?

**Target:**

<img src="img/nested_loop_task.jpg" width="50%" alt="a matrix of 12 by 12 circles">



Using two regular for-loops would only result in a vertical and horizontal array of circles:

<img src="img/two_for_loops.jpg" width="100%" alt="using two loops results in a vertical and a horizontal line of circle, but no matrix">



Let's imagine the *matrix* consists of 3 x 3 elements. We could split it up in:

<img src="img/matrix.png" width="100%" alt="a 3 by 3 matrix showing how to access the circles using their column and row">

We can achieve this by creating **a for-loop to iterate through the columns, nested inside a for-loop to iterate through the rows:**

![nested_loop_code](img/nested_loop_code.jpg)



So the final code for nested loops looks like this ([link to code file](src/Code2_NestedLoops/Code2_NestedLoops.pde)):

```processing
int interval= 60; //how much space (in pixels) between lines?
int amount= 20;   //how many lines?

void setup() {
  size(800, 800);
  background(255);
}

void draw() {  
  //iterate through rows
  for (int row = 0; row<amount; row++) {
    //iterate through columns
    for (int column = 0; column<amount; column++) {
      circle(column*interval, row*interval, 50);
    }
  }
}
```



## 3.1 Arrays

Arrays are, in general, arrangements / sequences of things

You can think of them as a freight train of shipping containers, as we used to think of them when we learned that variables are a container that holds data of a certain type. Arrays and our metaphorical trian have a lot in common:

- The **train** has **many wagons**** of the **same type** (e.g. shipping container) in a **fixed order.**

- An **array** has **many elements** of the **same type** (e.g. int variables) in a **fixed order.**



Previously we had to give each variable a unique name. In an array we can access/manipulate them by using the **array name** and their **position (called "index")** in the array:

![array_train_metaphor](img/array_train_metaphor.jpg)



### "Create" Arrays

We can "create" (declare & initalize to be precise) arrays by doing:

```processing
int[] posY = {0,100,200,300,400};
```

<img src="img/create_array.jpg" width="80%" alt="screenshot of array syntax described above">

There are other ways of "creating" arrays, that you can look up in the syntax!

### "Using" Arrays

We can "use" (call & assign to be precise) arrays in a similar way to variables. For example, call the 4th element of an array (arrays always start counting from 0, so the 4th element has index 3):

```processing
if (posY[3]>whatever){ ...
```

n thhe same way we can (re)assign values:

```processing
posY[3] = 100;
```

<img src="img/use_array.jpg" width="80%" alt="screenshot of array syntax described above">



### Multidimensional Arrays

With the train metaphor we learned about a so-called one dimensional array, because it stores only a single row of elements.

There can also be 

- two-dimensional arrays (imagine a train with two floors of containers
- three dimensional arrays (imagine a container ship that stores containers not only one behind the other and one on top of the other, but also side by side)
- arrays with more than three dimensions (difficult to imagine, used in higher level concepts and in math)

An example application using a 2D array would look like this: 

```processing
posY[1][3] = 100;
```

Check out the Processing documentation for more information!



### Falling Blobs

In the course, we wrote a sketch that creates 5 blobs that fall "down" the screen at different speeds and with different starting positions. Here is the final code ([link to code file](src/Code4_FallingBlobs/Code4_FallingBlobs.pde)):

```processing
int[] posY = {0, 100, 200, 300, 400}; //starting position of 5 blobs
int[] speeds = {1, 2, 3, 4, 5};       //speed of 5 blobs

void setup() {
  size(800, 800);
}

void draw() {
  //styling stuff
  background(255);
  fill(0);

  for (int i = 0; i < 5; i = i+1) {
    //increment position of current (i) blob by adding "speeds"
    posY[i] = posY[i] + speeds[i];

    //draw current (i) circle with corresponding posY
    circle (i*150, posY[i], 50);
    
    //set back at the end of the screen
    if (posY[i] > height) {
      posY[i]=0;
    }
  }
}
```



## 3.2 Binary Numbers
### Understanding the Numeral Systems
The decimal system, used by most modern civilisations to represent numbers and do mathematics with them, is just one of an infinite number of number systems, all of which follow the same internal logic and can most naturally be explained using the decimal system:
- Numeral systems have a **base, which represents the number of tokens (or states) that a digit can hold. _In decimal there are ten tokens: 0, 1, 2, ,3 ,4 ,5, 6, 7, 8, 9_.
- Counting up works by iterating through the tokens _( 0 -> 1 -> 2 -> 3 ... )_ until the last token is reached _(9)_
- In order to count higher than the token with the highest value, two things must happen:
  - the current number is reset to zero
    - At the same time, either a new digit is introduced on the left - or an existing digit on the left is incremented by one.
- Following this logic, each new digit introduced extends the possible values represented by the factor of the base ( = number of tokens). In decimal, this means that each new digit **increases tenfold** the possible values represented by the number system.
- Consequently, counting from the right, the value of each is multiplied by increasing exponents of the base, starting with one. In decimal, this means that the value of the digit _farthest_ to the right is multiplied by 1, the digit to the left by 10, the digit to the left by 100, and so on.

For exampple, the number '123' or 'one hundred and twenty three' in the decimal system is represented as 1 * 100 + 2 * 10 + 3 * 1

<img src="img/decimal.png" width="90%">


### The Binary System
The binary system is a number system based on **two**. This means that each digit can only represent one of two states: **0** or **1**. The binary system follows exactly the same internal logic as all other number systems, and was very important in the development of machine-based calculation and computing. Since each new digit only **doubles** the possible values represented, a number represented in the binary systems requires more digits than the same number represented in decimal systems. Counting up from 0 to 9 in the binary system produces the following numbers:

0 -> 0

1 -> 1

2 -> 10

3 -> 11

4 -> 100

5 -> 101

6 -> 110

7 -> 111

8 -> 1000

9 -> 1001

A digit in binary is called a **bit** and is the smallest chunk of information incomputer science, it can only hold a **0** or **1**, respectively **on** or **off**. 
Very often bits are organised as groups of 8, which are also called **bytes**. Since a byte contains 8 bits, it can hold values between 0 and 255. So the '123' example above can be represented as **01111011**.

<img src="img/binary123.png" width="80%" >

There were reasons why early and modern computing used binary numbers under the hood. 

- It is possible to perform normal mathematical operations in binary because the inner logic of the numeral systems is preserved. This means that mathematics still works normally.
- There is a branch of mathematics called _Boolean Algebra_ which specialises in formalising logical statements as binary **true** or **false** expressions. It is relatively easy to represent and read only two states, much easier than differentiating 10 nuances of a state for a direct projection of the decimal system. This 'robustness' has made it possible to represent and read binary information through many technologies such as punch cards, relays, vacuum tubes and transistors - it is only necessary to distinguish between 2 states, 1/0, on/off, present/absent, high/low.

## 3.3 Binary Data & Machines (and Punchcards)
Some notable milestones in the history of binary machines were:

The Jacquard Loom:
- Joseph Marie Jacquard
- Patented in 1801
- Looms used punch cards to automate the creation of patterned weaves in textiles
- The patterns were translated into patterns of holes on cardboard cards → punch cards
- The punch cards were used in a mechanical lever mechanism.
- Depending on the presence or absence of a hole at the point of contact between the levers and the punch card, the levers pulled only the right strings for a particular pattern.
- Punch cards thus contained binary information, represented by the presence or absence of holes.
- The punch cards of the Jacquard loom are often referred to as the first implementation of _software_ because, unlike the loom itself, they were relatively easy to manipulate. As a result, the same loom could weave multiple patterns simply by changing the punch cards.

The Hollerith Tabulating Machine​
- Hermann Hollerith
- Patented in 1889
- Tabulating machines were used to read out information encoded on punched cards.
- It used electricity and two hinged plates controlled by a lever.
- When the lever was operated and the punch card was between the plates, spring-loaded needles were passed through the holes and closed an electric circuit.
- If there were no holes at the contact points, the electric circuit wouldn't close.
- The contacts which were activated by a needle, drove forward the counting hands of a variety of dials that could be interpreted by humans.
- Again the presence or absence of holes in the punch card held binary data that controlled the machine

However, early tabulating machines weren't computers, they could only read and write information to and from punched cards. Over the decades, the ability to perform simple calculations was added, until tabulators and calculators became programmable general-purpose computers.

Punch cards remained a primary input and output medium until the 1980s. The largest computer program ever run on punched cards was SAGE, the first real-time, networked air defence system. It was written on 62500 punched cards containing ~5MB of data.

## 3.5 Functions

<img src=img/photoshop.png width=80% >

Software can contain millions of lines of code and is written and maintained by many people. So it needs to be organised. For this reason, software is usually divided into modules that communicate with each other via defined interfaces. These modules should ideally be as self-contained and independent as possible, and their interfaces should of course be compatible.  

For now, the primary technique for organising code will be **functions**, which (if done right) make code more organised, modular and reusable.

Functions are an abstraction layer. Just as variables are an abstraction for values, functions are an abstraction for behaviour. As with built-in variables, there are a lot of built-in functions in Processing that you will have used throughout the course, such as:

```processing
void setup() {...}
void draw() {...}
circle(posX,posY,50);
rect(mouseX,mouseY,100,100);
```
Analog to variables, in order to utilize own functions, they have to be defined first:

<img src=img/ownfunctions.png width=80% >


Regarding the code for one falling blob, one way to utilize functions would be to "outsource" the following two lines: 

```processing
background(255);
fill(0);
```

<img src=img/ownfunction2.png width=80% >


<img src=img/ownfunction3.png width=80% >

It is also possible to define parameters for custom functions to interact and manipulate the values within the function when it is called.

<img src=img/ownfunction4.png width=80% >

### Task: Recreate the rect() function of processing with an own function, which draws a rectangle with 4 lines.

**Example Solution**: [Code File](https://github.com/KISDinteractive/fundamentals22w/tree/main/sessions/Session3_Advanced_Code/src/Code5_myRect)

**Special:** You could also solve the Task by using point() only. The result would look [like this (code file)](src/Code_5_myRect_alternativeVersionUsingPoints/Code_5_myRect_alternativeVersionUsingPoints.pde).

