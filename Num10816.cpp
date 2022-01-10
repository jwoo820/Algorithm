//
//  main.cpp
//  Num10816
//
//  Created by Park Jungwoo on 2021/05/07.
// 선형탐색으로 시간초과됨
// 이분탐색
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int n, m;
    cin >> n;

    vector<int> vec_n(n);   // 카드에 적혀있는 정수
    for (int i = 0; i < n; i++) {
        cin >> vec_n[i];
    }
    sort(vec_n.begin(), vec_n.end());
    cin >> m;
    vector<int> vec_m(m);   // 탐색할 카드
    for (int i = 0; i < m; i++) {
        cin >> vec_m[i];
    }
    // lower -> 탐색해야하는 배열의 첫번째 요소 -1
    // upper -> 탐색해야하는 숫자의 마지막 요소
    // upper - lower = 갯수
    for (int i = 0; i < m; i++) {
        auto lower = lower_bound(vec_n.begin(), vec_n.end(), vec_m[i]);
        auto upper = upper_bound(vec_n.begin(), vec_n.end(), vec_m[i]);
        vec_m[i] = upper - lower;
    }
    for (auto v : vec_m) {
        cout << v << " ";
    }
    return 0;
}
//
//1. 선형탐색으로 하니깐 시간 초과뜸, 이분탐색을 이용해야 시간복잡도 충족
//2. 이분탐색을 하기 위해서 배열을 오름차순으로 정렬
//3. vec_m에 lower - upper 저장 -> 출력
//1. vec_n : 6 3 2 10 10 10 -10 -10 7 3
//2. vec_n : -10 -10 2 3 3 6 7 10 10 10 -> sort
//3. vec_m : 10 9 -5 2 3 4 5 -10
//4. vec_n의 0번 index부터 vec_m에서 탐색 시작
// lower bound : 찾고자 하는 값 이상이 처음으로 나타나는 위치
// upper bound : 찾고자 하는 값보다 큰 값이 처음으로 나타나는 위치

//6 3 2 10 10 10 -10 -10 7 3

//10 9 -5 2 3 4 5 -10
