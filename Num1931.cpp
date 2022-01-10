//
//  main.cpp
//  Num1931
//
//  Created by Park Jungwoo on 2021/04/15.
//

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Time
{
    int begin;
    int end;
};
// 회의 시간 정렬
bool cmp(Time f, Time s)
{
    // 종료 지점이 같을 경우 시작지점이 더 빠른 순으로 정렬
    if(f.end == s.end){
        return f.begin < s.begin;
    }
    //종료시간 기준으로 정렬
    else
        return f.end < s.end;
}
int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    cin>>n;
    vector<Time> t(n);
    for(int i=0 ;i<n;i++){
        cin>>t[i].begin>>t[i].end;
    }
    
    sort(t.begin(), t.end(), cmp);
    
    int cnt = 0;
    int save = 0;
    
    for(int i=0; i<t.size(); i++){
        if(save <= t[i].begin){     //회의 종료지점이
            save = t[i].end;        //다음 회의 종료 지점 저장
            cnt++;
        }
    }
    cout << cnt<<endl;
}
