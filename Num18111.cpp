//
//  main.cpp
//  Num18111
//
//  Created by Park Jungwoo on 2021/05/07.
//

#include <iostream>
#include <climits>
using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    int n, m, b;
    int map[501][501];
    int leastTime = INT_MAX;
    int mostHeight = 0;
    cin >> n >> m >> b;
    // 좌표 입력
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            cin >> map[i][j];
        }
    }
    for (int h = 0; h <= 256; h++) {
        int build = 0;
        int remove = 0;
        // 채울 블럭, 지울 블록 계산
        for(int i = 0; i < n; i++){
            for(int j = 0; j < m; j++){
                // height > 0 -> remove, height < 0 -> build
                int height = map[i][j] - h;
                if(height > 0) remove += height;
                else if(height < 0) build -= height;
            }
        }
        // remove + b >= build -> 안되면 평면 생성 불가
        // if(맵의 한 타일에서 높이 - 정한높이가 양수) => 지워야할 블록
        // ex) h = 65일 때 -> remove = -13, b = 0, build = 0
        // ex) h = 64일 때 -> remove = 0, b = 0, build = 1
        // ex) h = 63일 때 -> remove = 11, b = 0, build = 0
        // ex) h = 62일 때 -> remove = 23, b = 0, build = 0
        if(remove + b >= build){
            // 소요시간 계산
            int time = remove * 2 + build;
            if(leastTime >= time){
                leastTime = time;
                mostHeight = h;
            }
        }
    }
    cout << leastTime << " " << mostHeight <<"\n";
    return 0;
}
// 높이 0의 평면부터 만든다고 가정 -> 최적의 시간 탐색
//1. 높이 체크 -> 0~256까지 탐색
//2. 채워야할 블록, 지워야할 블록 계산
//3. 높이와 걸린 시간 계산 -> 지울 블록*2 + 채울 블럭
//4. 소요시간 적다면 시간 갱신
