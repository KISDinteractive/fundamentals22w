#include <iostream>
#include <unistd.h>

using namespace std;

int main() {
  while (1) {
    int x = 0;
    cout << "This is a timer. Enter a time in seconds or exit with 0: ";
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
        usleep(1000000); //wait 1 sec (1000 millis / 1000 * 1000 micros)
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
