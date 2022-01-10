//
//  main.cpp
//  Num1330
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    ios_base :: sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    int a, b;
    cin >> a >> b;
    if(a > b) cout << '>';
    else if( a < b) cout << '<';
    else cout << "==";
    return 0;
}
