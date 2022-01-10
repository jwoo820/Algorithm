//
//  main.cpp
//  Num2839
//
//  Created by Park Jungwoo on 2021/04/13.
//

#include <iostream>

using namespace std;
int main(int argc, const char * argv[]) {
    int input;
    int total =0;
    cin >> input;
    
    while(input > 0){
        if(input % 5 == 0){
            input -= 5;
            total++;
        }
        else if(input % 3 ==0){
            input -= 3;
            total++;
        }
        else if(input > 5){
            input-=5;
            total++;
        }
        else{
            if(input >3){
                input-=3;
                total++;
            }
            else{
                total = -1;
                break;
            }
        }
    }
    cout << total<<endl;
    return 0;
}
