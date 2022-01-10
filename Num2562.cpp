//
//  main.cpp
//  Num2562
//
//  Created by Park Jungwoo on 2021/05/10.
//

#include <iostream>
#include <vector>
using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    vector<int> vec(9);
    int max = 0;
    int index;
    for(int i = 0; i < 9; i++){
        cin >> vec[i];
    }
    for (int i=0; i<9; i++) {
        if(max < vec[i]){
            max = vec[i];
            index = i;
        }
    }
    cout << max <<'\n' << index+1 << '\n';
    return 0;
}
