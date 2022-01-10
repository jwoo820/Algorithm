//
//  main.cpp
//  Num8958
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
#include <cstring>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    char input[80]; // OX가 들어갈 문자열
    int sum=0; // 총합(출력)
    int correct=0; // 'O'일떄 정답점수
    int loopTime=0; // 테스트 횟수 증가용
    int time; // 반복 횟수
    cin >> time; // 반복 횟수 입력
    while (time>loopTime) { cin >> input; // O X 입력 // 문자열 배열 수만큼 반복
        for (int i = 0; i < strlen(input); i++) { if (input[i] == 'O')// O일때
        { correct++; // 정답점수 증가
            sum = sum + correct; // 총합에 더해주기
            
        } else // X 일떄
        { correct = 0; // 정답점수 초기화
            
        } } cout << sum << endl; //출력
        sum = 0; // 합계 초기화
        correct = 0; //증가값 초기화
        loopTime++;// 반복횟수증가
        
    } return 0;
    
}
