//
//  main.cpp
//  Num11047
//
//  Created by Park Jungwoo on 2021/04/14.
//

#include <iostream>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    
    int n,k, cnt = 0;
    vector<int> type;
    cin>>n>>k;
    //input arr
    for(int i=0; i<n;i++){
        int input;
        cin>>input;
        type.push_back(input);
    }
    for(int i=n-1;i>=0;i--){
        while(k/type[i]>0){
            cnt++;
            k-=type[i];
        }
        if(k<0) break;
    }
    cout<<cnt<<endl;
    return 0;
}
