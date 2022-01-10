//
//  main.cpp
//  Num2108
//
//  Created by Park Jungwoo on 2021/05/03.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    int n, tmp, sum = 0, mode = 0 , count_Max;
    bool isSecond = false;
    cin >> n;
    vector<int> vec(n);         // 입력 배열
    vector<int> cnt(8001, 0);    // 빈도 수 저장, 최빈값
    for (int i=0; i<n; i++) {
        cin >> vec[i];
        tmp = vec[i] <= 0 ? abs(vec[i]) : vec[i] + 4000;
        cnt[tmp]++;
    }
    count_Max = *max_element(cnt.begin(), cnt.end());   // 최고 빈도 값
    
    sort(vec.begin(), vec.end());   //sort
    // 산술평균
    for (const auto &v : vec) {
        sum += v;
    }
    tmp = round((double)sum / vec.size());      // 정수형으로 출력해야함, round 는 반올림
    cout << tmp <<"\n";
    // 중앙값
    cout << vec[vec.size()/2] << "\n";
    // 최빈값
    for (int i = -4000; i < 4001; i++) {
        tmp = i <= 0 ? abs(i) : i + 4000;
        if(cnt[tmp] == count_Max){
            mode = i;   //최빈값
            if(isSecond){   // 두번 나올경우 if 탈출
                break;
            }
            isSecond = true;
        }
    }
    cout << mode <<"\n";
    // 범위
    cout << vec.back() - vec.front() << "\n";
    return 0;
}
//1. 절대값 정수를 위한 배열 생성 -> index에 맞춰서 복사배열 저장(-8000~8000)
//2. 원본 배열 오름차순 정렬
//3. 산술평균 -> 다 더하고 크기로 나눔(소수점 발생하므로 반올림 해줌)
//4. 중앙값 -> 정렬한 원본배열의 중앙
//5. 최빈값 -> 복사 배열에서 가장 빈도 큰걸 고름, 두번 나올경우 break
//6. 범위 -> 정렬된 원본배열의 시작 - 끝
