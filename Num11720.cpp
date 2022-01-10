//
//  main.cpp
//  Num11720
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int input, temp;
    int sum = 0;
    char num;
    cin >> input;
    cin.get();
    for (int i=0; i<input; i++) {
        cin.get(num);
        temp = num - '0';
        sum += temp;
    }
    cout << sum << endl;
    return 0;
}
