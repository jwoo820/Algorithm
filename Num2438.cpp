//
//  main.cpp
//  Num2438
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    cin >> n;
    for(int i = 0; i < n; i++){
        for(int j = 0; j <= i; j++){
            cout << '*';
        }
        cout << '\n';
    }
    return 0;
}
