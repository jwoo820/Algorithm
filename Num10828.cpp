//
//  main.cpp
//  Num10828
//
//  Created by Park Jungwoo on 2021/04/26.
//

#include <iostream>
#include <stack>
#include <string>

using namespace std;
int main(int argc, const char * argv[]) {
    // insert code here...
    
    int n, x;
    cin>>n;
    stack<int> stack;
    string str;
    
    for(int i=0; i<n;i++){
        cin>>str;
        if(str == "push"){
            cin >> x;
            stack.push(x);
        }
        else if(str =="pop"){
            if(!stack.empty()){
                cout<<stack.top()<<endl;
                stack.pop();
            }
            else{
                cout<<"-1"<<endl;
            }
        }
        else if(str == "size"){
            cout<<stack.size()<<endl;
        }
        else if(str == "empty"){
            if(stack.empty()){
                cout<<"1"<<endl;
            }
            else{
                cout<<"0"<<endl;
            }
        }
        else if(str == "top"){
            if(!stack.empty()){
                cout<<stack.top()<<endl;
            }
            else
                cout<<"-1"<<endl;
        }
    }
    return 0;
}
