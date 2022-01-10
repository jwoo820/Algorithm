//
//  main.cpp
//  Num2675
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int t;
    cin >> t;
    for(int i=0; i< t; i++){
        int r;
        string p;
        cin >> r;
        cin >> p;
        for(int j=0; j < p.length(); j++){
            for(int k = 0; k < r; k++){
                cout << p[j];
            }
        }
        cout << '\n';
    }
}
