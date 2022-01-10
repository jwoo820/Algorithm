//
//  main.cpp
//  Num11650
//
//  Created by Park Jungwoo on 2021/05/01.
//

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int n, x, y;
    cin >> n;
    vector<pair<int, int>> vec;
    for (int i=0; i<n; i++) {
        cin >> x >> y;
        vec.push_back({x, y});
    }
    sort(vec.begin(), vec.end());
    for(const auto &v: vec){
        cout << v.first <<" "<< v.second<<"\n";
    }
    return 0;
}
