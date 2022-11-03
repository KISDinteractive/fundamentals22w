//Example Code
#include <iostream>

using namespace std;


int main ()
{
    while (1) {
        int x = 0;
        cout << "Hi, this is a test program. Enter 1 to continue or 0 to end: ";
        cin >> x;
        if (x == 0){
            break;
        }
    }
    cout << "Ciao, you terminated this program.";
}
