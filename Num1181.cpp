//
//  main.cpp
//  Num1181
//
//  Created by Park Jungwoo on 2021/05/17.
//

#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
bool compare(string a, string b)
{
    if(a.length() != b.length())
        return a.length() < b.length();
    else
        return a < b;
    
}
int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    cin >> n;
    vector<string> vec;
    for (int i=0; i<n; i++) {
        string tmp;
        cin >> tmp;
        vec.push_back(tmp);
    }
    sort(vec.begin(), vec.end(), compare);
    //중복제거
    vec.erase(unique(vec.begin(), vec.end()), vec.end());
    for (auto v : vec) {
        cout << v <<'\n';
    }
    return 0;
}
//13
//but
//i
//wont
//hesitate
//no
//more
//no
//more
//it
//cannot
//wait
//im
//yours
