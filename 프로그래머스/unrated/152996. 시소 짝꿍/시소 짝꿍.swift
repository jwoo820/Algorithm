import Foundation

func solution(_ weights:[Int]) -> Int64 {
    var answer = 0

    var ratios = [(2,3), (2,4) ,(3,4) ,(4,3) ,(4,2) ,(3,2)]
    // 몸무게 : 몸무게인 사람
    var dic: [Int: Int] = [:]
    
    for weight in weights {
        dic[weight, default: 0] += 1
    }
    
    for i in dic {
        // 같은 몸무게가 2 이상인 경우 nC2
        if i.value > 1 {
            answer += dic[i.key]! * (dic[i.key]! - 1) / 2
        }
        // 평행을 맞출 경우
        for ratio in ratios {
            // x * a = y * b
            // y = x * a / b
            var x = i.key   // 현재 무게
            var a = ratio.0
            var b = ratio.1
            var y = x * a / b // 상대 무게
            if Float(y) != Float(x) * Float(a) / Float(b) {
                continue
            }
            if dic[y] != nil {
                // 무게가 같을 경우 x,y명으로 만들 수 있는 경우의 수는 x*y
                answer += dic[x]! * dic[y]!
            }
        }
        // 계산이 다 됬다면 0으로 초기화
        dic[i.key] = 0
    }
    // print(dic)
    // print(answer)
    return Int64(answer)
}