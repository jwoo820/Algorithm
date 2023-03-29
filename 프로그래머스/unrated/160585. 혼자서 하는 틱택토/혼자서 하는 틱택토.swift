import Foundation

func solution(_ board:[String]) -> Int {

    var board = board.map{Array($0)}
    var allCase: [String] = []
    var o = board.flatMap{$0}.filter{$0 == "O"}.count
    var x = board.flatMap{$0}.filter{$0 == "X"}.count
    // 후공이 더 많거나 선공을 더 많이 했을 경우
    if o-x >= 2 || o < x {
        return 0
    }
    
    // 연속된 표시가 두개 이상 인 경우 -> 총 9가지 case 모두 점검
    // 가로
    allCase.append(String(board[0][0]) + String(board[0][1]) + String(board[0][2]))
    allCase.append(String(board[1][0]) + String(board[1][1]) + String(board[1][2]))
    allCase.append(String(board[2][0]) + String(board[2][1]) + String(board[2][2]))
    // 세로
    allCase.append(String(board[0][0]) + String(board[1][0]) + String(board[2][0]))
    allCase.append(String(board[0][1]) + String(board[1][1]) + String(board[2][1]))
    allCase.append(String(board[0][2]) + String(board[1][2]) + String(board[2][2]))
    // 대각선
    allCase.append(String(board[0][0]) + String(board[1][1]) + String(board[2][2]))
    allCase.append(String(board[0][2]) + String(board[1][1]) + String(board[2][0]))
    
    var oArr = allCase.filter{ $0 == "OOO" } 
    var xArr = allCase.filter{ $0 == "XXX" }
    // xxx or ooo 가 둘다 존재할 때
    if !oArr.isEmpty && !xArr.isEmpty {
        return 0
    }
    // ooo가 이미 완성됬지만 x를 추가했을 경우
    if !oArr.isEmpty && o <= x {
        return 0
    }
    
    if !xArr.isEmpty && o != x {
        return 0
    }
    //  O X O
    //  . X X
    //  O X O
    
    
    return 1
}