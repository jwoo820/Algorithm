import Foundation

func solution(_ storey:Int) -> Int {
    // 6~9 -> 10으로 올려서 계산
    // 0~4 -> 0으로 내려서 계산
    // 5 -> 다음 자리수가 5~9일 때는 10 else 0
    var storey = storey
    
    var answer = 0
    while storey != 0 {
        var temp = storey % 10
        if temp > 5 {
            answer += 10 - temp
            storey += 10
        } else if temp < 5 {
            answer += temp
        } else {
            if storey / 10 % 10 > 4 {
                storey += 10
            }
            answer += temp
        }
        storey /= 10
    }
 
    return answer
}