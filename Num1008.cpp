//
//  main.cpp
//  Num1008
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    ios_base :: sync_with_stdio(false);
    cout.tie(NULL);
    cin.tie(NULL);
    double a,b;
    cin >> a >> b;
    cout.precision(12);
    cout << fixed;
    cout << a/b;
    return 0;
}
// std::fixed -> 소수점 아래로 고정
// std::cout.precision(n) -> 실수 전체 자리수 중 n자리까지 표현
