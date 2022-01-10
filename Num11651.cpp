//
//  main.cpp
//  Num11651
//
//  Created by Park Jungwoo on 2021/05/02.
//

#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

bool compare(pair<int, int> a, pair<int, int> b)
{
    if(a.second < b.second){
        return true;
    }
    else if(a.second == b.second){
        if(a.first < b.first)
            return true;
    }
    return false;
}
int main(int argc, const char * argv[]) {
    // insert code here...

    int n, x, y;
    vector<pair<int, int>> vec;
    cin >> n;
    for (int i=0; i<n; i++) {
        cin >> x >> y;
        vec.push_back({x, y});
    }
    sort(vec.begin(), vec.end(), compare);
    for(const auto &v : vec){
        cout << v.first << " " << v.second<<"\n";
    }
    return 0;
}
