//
//  main.cpp
//  Num11399
//
//  Created by Park Jungwoo on 2021/04/13.
//

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    int input, sum=0;
    vector<int> n;
    cin>>input;
    for(int i=0;i<input;i++){
        int a;
        cin>>a;
        n.push_back(a);
    }
    sort(n.begin(),n.end());
    for(int i=0;i<input;i++){
        for(int j=0;j<=i;j++){
            sum+=n[j];
        }
    }
    cout<<sum<<endl;
    return 0;
}
