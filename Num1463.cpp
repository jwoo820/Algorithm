//
//  main.cpp
//  Num1463
//
//  Created by Park Jungwoo on 2021/04/15.
//

#include <iostream>

using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    // 3나누는게 우선순위,
    int x;
    int dp[1000001];
    cin >> x;
//    // bottom-up
//    for(int i=2; i<=x; i++){
//        dp[i] = dp[i-1] + 1;
//        if(i%2==0) dp[i] = min(dp[i],dp[i/2]+1);
//        if(i%3==0) dp[i] = min(dp[i],dp[i/3]+1);
//    }
    // top-down
    if(dp[x] == 0){
        
    }
    cout << dp[x]<<endl;
    return 0;
}
