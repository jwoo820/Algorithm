//
//  main.cpp
//  Num10866
//
//  Created by Park Jungwoo on 2021/05/09.
//

#include <iostream>
#include <deque>
using namespace std;
int main(int argc, const char * argv[]) {
    ios_base :: sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    deque<int> deq;
    string command;
    int n, tmp;
    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> command;
        if(command == "push_front"){
            cin >> tmp;
            deq.push_front(tmp);
        }
        else if(command == "push_back"){
            cin >> tmp;
            deq.push_back(tmp);
        }
        else if(command == "pop_front"){
            if(!deq.empty()){
                cout << deq.front() << "\n";
                deq.pop_front();
            }
            else cout << -1 << "\n";
        }
        else if(command == "pop_back"){
            if(!deq.empty()){
                cout << deq.back() << "\n";
                deq.pop_back();
            }
            else cout << -1 << "\n";
        }
        else if(command == "size") cout << deq.size() << "\n";
        else if(command == "empty") cout << deq.empty() << "\n";
        else if(command == "front"){
            if(!deq.empty()) cout << deq.front() << "\n";
            else cout << -1 << "\n";
        }
        else if(command == "back"){
            if(!deq.empty()) cout << deq.back() << "\n";
            else cout << -1 << "\n";
        }
    }
    return 0;
}
