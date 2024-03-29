# Session 5 | 07.11.2022 - C++,  Application, Roundup

***Disclaimer:*** *This page offers supporting material for an Interaction Design course held at [KISD](https://kisd.de) in the winter term 2022/23. Visit the [landing page](https://github.com/KISDinteractive/fundamentals22w) of this course for more information.*

## 5.1 Compiling & Interpreting

Until now, we wrote "code" only in porgramming languages with elaborated commands like `rect()` or `plot()`. However, code is executed by the processor which can only execute a limited amout of logic operations resulting in a few possible instructions represented by zeros and ones. So how is your programm being transformed from a high level of abstraction (like  `rect()`) to a series of processor instructions based on simple logic? 

Usually, this is achieved by one of two strategies: **Interpreting** or **Compiling**

If the code is translated by interpreting, a program called _Interpreter_ ...

* Takes a single line of code or instruction at a time
* Interpretation and execution takes place simultaneously
* Errors are displayed one by one
* Execution begins immediately … but is relatively slow
* Does not produce intermediate code -> Interpreter executes Source Code directly

On the other hand, a *Compiler* ...

* Takes entire program at a time
* Compilation is done before execution
* Errors are displayed all at once at after compilation
* Execution begins only after compilation … but is relatively fast
* Creates intermediate codes -> machine code / executeable file -> Executable File is executed by OS

Since an Interpreter executes the source-code, while a Compiler creates a file for execution, there are some aspects to consider when code should be delivered to someone else in form of a program:

Interpreted Code
* Source Code is delivered from Maker to User
* User needs the right interpreter installed
* Interpreter at User takes care of machine specific settings 
* Cross Plattform
* User is able to see source code

Compiled Code
* Maker create executeable file 
* Executeable file has to match OS and CPU architecture of User
* Executable file is delivered from Maker to User
* User just runs executeable
* Built for Target Plattform
* User is not able to see source code

While, in theory, any programming language could be interpreted or compiled, most programming languages are usually implemented in a certain way. Javascript and Phython are examples of mostly interpreted languages, while C and C++ are mostly compiled.

## 5.2 Transfer to C++

Last Language we learned was C++. This is a short roundup of its context:

- Enhancement / Extension of C
- published 1985 by Bjarne Stroustrup
- Further expanded until today
  - Language revisions: C++98, C++03, C++11, C++14, C++17, C++20, C++23
  - So-called "C with Classes"
  - Today: modern language including object orientation

C++ is a compiled language. Setting up all the tools and the workspace takes a lot of time. **This is why we used an [online IDE](https://www.onlinegdb.com/online_c++_compiler) and compiler for this exercise.**

### Hello World in C++

We first took a look into the basic components of a Hello World! programm in C++:

- include libraries by using `#include <LIBRARY-NAME>`
- with `using namespace std;` we allow all functions from the std (standard) namespace to be called directly
- the `main` function is special:

  - runs only once (start and end of programm)
  - looping needs to be done by hand
  - is an `int` function (usually expects an int to be returned), but return is not mandatory
- Printing stuff to the console is done by `cout << "some text";`.

  - different to most other languages.
  - `cout` part of the `iostream` library.
  - used by writing the text in `" "` on the right side of `cout` and then adding a `<<` arrow-ish thing between them

[See Code file or:](src/cpp/Code1_HelloWorld.cpp)

```cpp
#include <iostream>
using namespace std;
int main(){
    cout<<"Hello World";
    return 0;
}
```

<img src="img/hello_world.jpg" alt="hello_world" style="width:70%;" >

### Looping and Breaking Loops

We then learned how we create a never-ending loop (similar to draw() in Processing) by using `while (1){ }`.

All loops can be ended by using the `break;` instruction. We do that whenever the input from the console (`cin >> x;`) is a 0.

[See Code file or:](src/cpp/Code3_BreakLoops.cpp)

```cpp
//Example Code
#include <iostream>
using namespace std;

int main ()
{
    while (1) {
        int x = 0;
        cout << "This is a test. Enter 1 to continue or 0 to end: ";
        cin >> x;
        if (x == 0){
            break;
        }
    }
    cout << "Ciao, you terminated this program.";
}
```

<img src="img/break.jpg" alt="hello_world" style="width:70%;" >

### Task: a Timer App that Show Remaining Time

The participants then had the task to code an app themselves. The app should count down from a user-inputted number to zero while printing the remaining seconds to the console.

Solution ([also see Code file](src/cpp/Code4_Timer-TaskSolution.cpp)):

```cpp
#include <iostream>
#include <unistd.h>
using namespace std;

int main() {
  while (1) {
    int x = 0;
    cout << "This is a timer. Enter a time in sec or exit with 0: ";
    cin >> x;
  
    //Exit if there is a 0
    if (x == 0) {
      break;
    } 
  
    //Do Timer things if there is sth else then zero
    else {
    
        //make another loop than counts down the seconds
      while (x > 0) {
        cout << "Remaining Seconds: " << x << endl;
        x--;
        usleep(1000000); //wait 1 sec (1000 millis * 1000 micros)
      }
  
      //print some nice finish lines
      cout << "TIME IS OVER!" << endl;
      cout << " ------------- " << endl;
      cout << "restarting the app..." << endl<< endl<< endl;
    }
  }
  
  //when we're here the program will finish!
  cout << "Timer has been terminated!";
}
```

<img src="img/task_timer.jpg" alt="hello_world" style="width:70%;" >

## 5.3 Git & Github

## 5.4 Application Example

The last thing we did was going live through a big coding project including Git and Github, a complete C++ compiling toolchain and even crosscompilation between a Macbook and a Raspberry Pi Compute Module using Docker and Wifi.

## The END

If you have any Feedback regarding the course or us, please feel free to write us a mail or a  just post in spaces.

**Congratulations! You just learned all the building blocks of code!**
