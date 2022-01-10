//
//  main.cpp
//  Num9095
//
//  Created by Park Jungwoo on 2021/04/29.
//  dp 문제
//  점화식을 찾아서 구현

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    int dp[11];
    dp[1] = 1;
    dp[2] = 2;
    dp[3] = 4;
    int t, n;
    cin >> t;
    for (int i=0; i<t; i++) {
        cin>>n;
        for (int j=4; j<=n; j++) {
            dp[j] = dp[j-1]+dp[j-2]+dp[j-3];
        }
        cout<<dp[n]<<endl;
    }
    return 0;
}
//
// n = 1 -> 1
// n = 2 -> 2
// n = 3 -> 4
// n = 4 -> 7
// n = 5 -> 13
// n = 6 -> 24

// a[n] = a[n-1] + a[n-2] + a[n-3]
