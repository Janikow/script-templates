#include <iostream>
#include <string>
#include <sstream>
using namespace std;

int main() {
    cout << "Simple C++ Calculator\n";
    string input;
    while (true) {
        cout << "Enter expression (or 'exit' to quit): ";
        getline(cin, input);
        if(input == "exit") break;
        try {
            stringstream ss(input);
            double a, b;
            char op;
            ss >> a >> op >> b;
            double result = 0;
            switch(op){
                case '+': result = a + b; break;
                case '-': result = a - b; break;
                case '*': result = a * b; break;
                case '/': result = a / b; break;
            }
            cout << "Result: " << result << endl;
        } catch(...) {
            cout << "Invalid input.\n";
        }
    }
}
