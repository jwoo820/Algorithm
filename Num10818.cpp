//
//  main.cpp
//  Num10818
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    cin >>n;
    vector<int> vec(n);
    for (int i=0; i < n; i++) {
        cin >> vec[i];
    }
    cout << *min_element(vec.begin(), vec.end())<<' '<< *max_element(vec.begin(), vec.end());
    return 0;
}
