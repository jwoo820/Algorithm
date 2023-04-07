import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    // 이름이 불리면 index 한칸 앞으로 이동
    
    var answer: [String] = []
    var players = players
    var indexDic: [String: Int] = [:]
    var playerDic: [Int: String] = [:]
    
    for (i, player) in players.enumerated() {
        indexDic[player] = i
        playerDic[i] = player
    }

    // print(playerDic)
    // print(indexDic)
    for calling in callings {
        
        let callingIndex = indexDic[calling]! // 현재 불려진 선수의 index
        let frontPlayer = playerDic[callingIndex-1]!  // 현재 불려진 선수의 앞에 있는 선수의 이름
        // 앞뒤 바꿔주면 됨
        
        playerDic[callingIndex-1] = calling // 현재 불러진선수의 index -1
        playerDic[callingIndex] = frontPlayer // 원래 있던 선수를 뒤로 옮김
        indexDic[calling] = callingIndex-1
        indexDic[frontPlayer] = callingIndex
//         playerDic[index] = calling
//         indexDic[front] = index+1
        
//         indexDic[index] = calling
        
        
        // let index = players.firstIndex(of: calling)!
        // players.swapAt(index-1, index)
    }

    // print(playerDic.sorted{ $0.key < $1.key}.map{$0.value})
    // print(playerDic.sorted(by: {$0.key < $0.key}))
    return playerDic.sorted{ $0.key < $1.key}.map{$0.value}
}