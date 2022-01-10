//
//  main.cpp
//  Num2739
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    cin >> n;
    for(int i = 1; i <= 9; i++){
        cout << n << " * " << i<< " = " << n*i << '\n';
    }
    return 0;
}
