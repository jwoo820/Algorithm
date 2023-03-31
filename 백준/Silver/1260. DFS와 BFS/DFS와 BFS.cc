//
//  main.cpp
//  Num1260
//
//  Created by Park Jungwoo on 2021/04/14.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>
#include <cstring>
using namespace std;

const int MAX = 10001;
//방문 여부
bool visit[MAX];
//간선 정보
vector <int> adj[MAX];
queue<int> Q;

void dfs(int x)
{
    visit[x] = true;
    cout<<x<<" ";
    for(int y : adj[x]){
        if(!visit[y]){
            dfs(y);
        }
    }
}

void bfs(int sx){
    Q.push(sx);
    visit[sx] = true;
    while (!Q.empty()) {
        int x = Q.front();
        Q.pop();
        cout<<x<<" ";
        for(int y : adj[x]){
            if(!visit[y]){
                Q.push(y);
                visit[y] = true;
            }
        }
    }
}
int main(int argc, const char * argv[]) {
    // insert code here...
    int n,m,v;
    cin>>n>>m>>v;
    //간선 정보 입력
    for(int i=0; i<m;i++){
        int temp1, temp2;
        cin>>temp1>>temp2;
        adj[temp1].push_back(temp2);
        adj[temp2].push_back(temp1);
    }
    //작은 번호부터 방문
    for(int i=0;i<m;i++){
        sort(adj[i].begin(),adj[i].end());
    }
    dfs(v);
    cout<<endl;
    memset(visit, 0, sizeof(visit));
//    for(int v : visit){
  //      visit[v] = false;
    //}
    bfs(v);
    cout<<endl;
    return 0;
}
