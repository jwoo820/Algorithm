//
//  main.cpp
//  Num15651
//
//  Created by Park Jungwoo on 2021/05/09.
//
// dfs
// n : 갯수
// m : 깊이
#include <iostream>
#include <vector>
using namespace std;
int n, m;
vector<int> vec(7);
void dfs(int start)
{
    if(start == m){
        for(int i = 0; i < start; i++){
            cout << vec[i] << ' ';
        }
        cout << '\n';
        return;
    }
    for(int i = 1; i <= n; i++){
        vec[start] = i;
        dfs(start + 1);
    }
}
int main(int argc, const char * argv[]) {
    // insert code here...
    ios_base :: sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    cin >> n >> m;
    
    dfs(0);

    return 0;
}

