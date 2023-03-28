func solution(_ n:Int) -> String {
    var answer = ""
    for i in 1...n {    
        answer += i%2 == 0 ? "박" : "수"
    }
    
    return answer
}