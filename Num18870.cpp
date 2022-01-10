//
//  main.cpp
//  Num18870
//
//  Created by Park Jungwoo on 2021/05/02.
//  이분탐색 + 정렬

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    int n, tmp;
    vector<int> vec, result;
    cin >> n;
    
    for (int i=0; i<n; i++) {
        cin >> tmp;
        vec.push_back(tmp);
        result.push_back(tmp);
    }
    // 중복 제거
    sort(result.begin(), result.end());
    result.erase(unique(result.begin(), result.end()), result.end());
    
    for (int a : vec) {
        int pos = lower_bound(result.begin(), result.end(), a)-result.begin();
        cout << pos << ' ';
    }
    
    return 0;
}
// 1. 배열 두개 생성
// 2. 하나를 중복 제거 + 정렬
// 3. lower_bound -> 이진 기반 탐색 방법(정렬되어 있어야함), key값이 "없으면" key값보다 큰 가장 작은 정수 값을 찾음
// ex) vec : 2 4 -10 4 -9
//  result : -10 -9 2 4 4
//        -> -10 -9 2 4
//
