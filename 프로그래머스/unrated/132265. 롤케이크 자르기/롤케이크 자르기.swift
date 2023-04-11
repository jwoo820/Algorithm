import Foundation

func solution(_ topping:[Int]) -> Int {
    var answer = 0
    var chulsoo: [Int: Int] = [:]    // 종류 : 개수
    var bro: [Int: Int] = [:]
    
    for i in topping {
        chulsoo[i, default: 0] += 1
    }
    
    // print(chulsoo)
    
    for i in topping {
        chulsoo[i]! -= 1
        if chulsoo[i] == 0 { chulsoo[i] = nil }
        bro[i, default: 0] += 1
        if chulsoo.count == bro.count { answer += 1 }
    }
    return answer
    //     var answer = 0
    
    
//     var chulsoo = topping
//     var bro: [Int] = []

//     for i in 0..<topping.count {
//         var last = chulsoo.removeLast()
//         bro.append(last)
        
        
//         if Set(chulsoo).count == Set(bro).count {
//             answer += 1
//         } 
//     }
    
//     return answer
}