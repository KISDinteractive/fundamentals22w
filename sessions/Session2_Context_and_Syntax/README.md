# Session 2 | 17.10.2022 - Context and Syntax

***Disclaimer:*** *This page offers supporting material for an Interaction Design course held at [KISD](https://kisd.de) in the winter term 2022/23. Visit the [landing page](https://github.com/KISDinteractive/fundamentals22w) of this course for more information.*

## 2.1 Origins of the Computer

We started with some content and context about the origins and history of the modern computers we use for programming.

### Counting and Numbers

- **Counting** → important since beginning of humanity. Carving lines into sticks has been used fro thousands of years for recording e.g. debts.
- Counting visible things (e.g. with fingers) is simple. Higher numbers and math operations need countinng **systems**.
- **Decimal system** was developed in different places and times. Still no positional number system to write down numbers effectively.
- **Hindu-Arabic numerals** (and the positional system), which we know today, spread from India via the Arabic region to Europe. Similar decimal systems also existed in China.
- **Roman numerals** were predominant until a few hundred years ago. They could only be used to write down numbers, but not to perform mathematical operations with them (no pure positional system, but decimal numbers).

### Calculation Machines

- Oldest and most famous is the "**Abacus**". Long before hindu-arabic numerals!
- Again, development took place at various places and times. Sometimes connected, sometimes independent. 
- **Why is this of relevance for computers?** For centuries and centuries → the Abacus wasn't just the number one calculating tool but the only one (besides mental arithmetic).
- First mechanical devices around 400 years ago → next chapter

### Mechanical Calculators

- While complex **theorems** were developed in mathematics, the actual calculations were still **performed by hand**.

- Three people are considered as the "the first" and also most inspiring in the field of mechanical calculation devices:
  
  - Wilhelm Schickard (1592-1653)
  - Blaise Pascal (1623-1662)
  - Gottfried Wilhelm von Leibniz (1646-1716)

- All had the same problem: manufacturing of the mechanical parts lacked in precision and longevity → **machines would have worked in theory but got jammed** after a short time.

- Many variants and enhancements in 18th and 19th century without real breakthroughs. 

- **Serial production** in the beginning of the 20th century → availability for science and business, not affordable for home use

- For the **consumer market**, the first affordable calculators became available in the 1970s when electronic calculators from Japanese brands such as Sanyo, Canon, Sharp and Casio entered the market.

- Methods for performing complex math operations on a piece of paper had been introduced over the last centuries as well – we will not go into further detail in the context of this course.

### Electrical Calculators and Logic Machines

- Beginning of 20th century: invention of the **electromagnetic relay** as replacement for mechanical parts for logic operations. 
  
  - Relay technology later got replaced by **vacuum tubes** (1940s), **transistors** (1950s) and **integrated circuits** (end of 1950s).
  
  - Each step reduced **installation space, power consumption and price of parts** and improved their **reliability and longevity**.
  
  - Kickoff for telephone & telegraph technology as well as modern computing machines.

- In the 190's many researched and worked on the development of logic machines with new relay technology. 

- However first programmable computer was th **"Z1" by Konrad Zuse** (1910 – 1995) presented in 1938. 
  
  - Binary and electrically driven
  
  - Though fully mechanical (no relays)
  
  - Programmability through punched colleloid film
  
  - Didn't work reliably because mechanical parts got stuck quickly

- Many consider its further development "**Z3**" (also by **Konrad Zuse**), to be the first *working* (programmable) computer.
  
  - Fully electromechanical 
  
  - 600 Relays for calculating & 1600 Relays for memory
  
  - Like Z1 (and Z2): binary and programmable by punched film
  
  - Unlike Z1 (and Z2): *working* with a clock rate of 5 Hz

- Ongoing discussion and research on the question who build *the first computer*:
  
  - some see *fully electronic* computers (without electro-mechanical parts like relays) as the *first*
  
  - some see computers with *electronic memory* (instead of punch card/films) as the *first*
  
  - ... even more categories
  
  - In the course we investigated some furhter examples with images
  
  - worth to mention that these advances **roughly went from 1940 to 1950**

### The Human Computer

Excursion about the term "computer" and its previous use for human computers.

- From 17th century on: economical calculations and creating mathematical tables for look ups (like logarithmic scales) were done by humans following explicit rules, but doing the calculation by hand or (in rare cases) on mechanical calculators.

- In the beginning mostly men doing the job, **later on mostly women**: 
  
  - Well educated women were often not enabled to take on visible jobs → so they were doing the highly demanding and complex work in the background in so called "computing rooms".
  
  - Further amplified by the world war (men were drafted for military service) and the accompanying need for calculations.
  
  - Existing experience and knowledge led to the fact that even after the war, **the pioneering era of programming was dominated by women (including black women).**
  
  - In the course we discussed some personal examples of this (Betty Holberton, Mergaret Hamilton, Katherine Johnson)

### Computer Science as a Theoretical Field & Alan Turing

Alan Turing (1912 – 1954)​ was a mathematican. In 1936 he tried to prove a mathematical problem and by doing that came up with the **theoretical model explaining the function of any alogrithm and modern computer** called the **Turing Machine**. With his proposition he – kind of unintended / accidentally – founded computer science as a scientific field.

He is most known (outside computer science and theory) for two other things:

- **The Welchman-Turing Bomb** which he was involved in developing.
  
  - developed with a group of scientists and engineers in UK
  
  - succeeded in deciphering the "Enigma-machine" used by German Nazis during World War II
  
  - Some consider this success to be closely linked to the end of the war, brought forward by one or more years, and put the number of lives saved at several million.

- The **Turing Test** or (as he called it) **The Immitation Game**
  
  - thought experiment that should give answers to the question if "a machine can think"
  
  - Setup of the test: an "average" interrogator chats for 5 minutes with a computer and a human being. No voice, no visual contact, just text. If the computer achieves to fool the interrogator in more than 30% into thinking it would be a human being, the test is passed.
  
  - He estimated the test to be passed around 2000. Some already claim to have passed the test, some state that the definition is too loose and instead bring new test setups forward → discussion in the course about today's implications

But the story of Alan Turing also includes the shameful discrimination he experienced, which (probably) ended in his death: in 1952, he was arrested for having a homosexual relationship, hindered to work in his field and forced to undergo a so-called "hormone treatment". He was found dead in 1954, probably by suicide. After numerous petitions and the support of famous scientists such as Stephen Hawking, he was officially pardoned by Queen Elizabeth in 2014.

## 2.2 History of Coding Languages

- In the beginning (first computers) programming was done by punch hole cards/film. Often no permanent storage, no/few input and ouput possibilities.

- Today we have operating systems and plenty of coding languages at hand. Code is stored in permanend storage, entered with keyboard and mouse and revised and executed with a screen.

- Before looking on the different Coding languages: short excursion in the development of modern computers (using transistors and integrated ciruits)

### The Modern Computer

- We already got to know the first generations of computers powerd by mechanics, relays, tubes and then transistors.

- From 1960 to 1970: many new computers; got smaller; more powerful (due to transistors and ICs). Still huge (minicomputer = size of a fridge)

- Still expensive and mostly for military, science or big businesses. No commercial success for home use

- **1975: Altair 880.** Hosting a microprozessor; smaller (called microcomputer); only about 500 USD.

- **1977: Apple II  (1298 USD):** highly sucessfull; more power; 16 color display; video games

- The so called **1977 Trinity** Apple II; Commodore PET 2001; TRS-80

- **1981: IBM PC**. IBM's entry point into home/personal computers. Defined standards. Majority of modern personal computers are derive from the IBM PC.

- **1984: Macintosh 128k** – mouse, graphical user interface

- **1984: Mac OS** and one year later in **1985 Windows 1.0** as the first graphical operating systems.

- After that the only major steps can be considered the invention of comercially successfull laptops (**Apple Powerbook 100** in 1991 and **Lenovo ThinkPad 300** in 1992​​) and the invention of functional smartphones with the **Apple iPhone in 2007**.

- In the following years, computer got faster, hosted more storage and memory, needed less power → more about that in the chapter of how a modern computer works.

### Programming Languages

In the course we discussed the profile and use of various languages an their history. Here we will only list the languages with a corresponding "Hello World!" code example (mostly inspired by[ this site](https://excelwithbusiness.com/blogs/news/say-hello-world-in-53-different-programming-languages))





**FORTRAN (1955)​: ​**

```fortran
program helloworld​  
     print *, "Hello World!"​  
end program helloworld
```



**COBOL (1960):**

```cobol
      IDENTIFICATION DIVISION.​
       PROGRAM-ID. hello-world.​
       PROCEDURE DIVISION.​
           DISPLAY "Hello World!"​
           .​
```



**BASIC (1964):**

```basic
10 PRINT "Hello World!"​
20 END
```



**Pascal (1970):**

```pascal
program HelloWorld(output);​
begin​
  Write('Hello World!')​
end.
```



**C (1972):**

```c
#include <stdio.h>​
​
int main(void)​
{​
    printf("Hello World!\n");​
}
```



**C++ (1983):**

```cpp
#include <iostream>​
​
int main()​
{​
    std::cout << "Hello World!\n";​
    return 0;​
}
```



**PERL (1987):**

```perl
print "Hello World!\n";
```



**Python (1991):**

```python
print("Hello World!")​
```



**Visual Basic (1991):**

```visual-basic
Sub Main()​

System.Console.WriteLine("Hello World!")​

System.Console.ReadLine()​

End​

End Sub
```



**Ruby (1993):**

```ruby
puts 'Hello World!'
```



**Java (1995):**

```java
class HelloWorldApp {​
    public static void main(String[] args) {​
        System.out.println("Hello World!"); // Prints the string to the console.​
    }​
}
```



**JavaScript (1995)​:**

```javascript
console.log("Hello World!");​
```



**PHP (1995)​:**

```php
<?php echo "Hello World!";
```



**C# (2000)​:**

```csharp
using System;​
​
class Program​
{​
    static void Main(string[] args)​
    {​
        Console.WriteLine("Hello World!");​
    }​
}
```



**Go (2009)​:**

```go
package main​
​
import "fmt"​
​
func main() {​
    fmt.Println("Hello World!")​
}
```



**Swift (2014)​:**

```swift
println("Hello World!")
```
