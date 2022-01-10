//
//  main.cpp
//  Num1427
//
//  Created by Park Jungwoo on 2021/05/01.
//

#include <iostream>
#include <algorithm>
#include <cstring>
using namespace std;

bool compare(int i, int j)
{
    return i > j;
}

int main(int argc, const char * argv[]) {
    // insert code here...

    char arr[10];
    cin >> arr;
    
    sort(arr, arr+strlen(arr), compare);
    for (int i=0; i<strlen(arr); i++) {
        cout << arr[i];
    }
    return 0;
}
