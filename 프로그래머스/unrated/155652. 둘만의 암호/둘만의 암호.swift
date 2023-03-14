import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var answer: [String] = []
    var alphabet = "abcdefghijklmnopqrstuvwxyz"
    var s = Array(s)
    for i in skip {
        alphabet = alphabet.components(separatedBy: String(i)).joined()
    }
    var check = alphabet.map{$0}
    print(check)
    for i in 0..<s.count {
        // s[i] 가 check에서 어디에 있는지 알아야함
        var index1 = 0
        for j in 0..<check.count {
            if s[i] == check[j] {
                index1 = j
                break
            }
        }
        answer.append(String(check[(index1+index)%check.count]))
    }    
    
    return answer.joined()
}