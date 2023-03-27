func solution(_ s:String, _ n:Int) -> String {
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var answer = ""
    for c in s {
        if c == " " {
            answer += " "
        } else {
            var char = c.lowercased()
            var index = alphabet.firstIndex(of: Character(char))!
            if c.isUppercase {
                answer += String(alphabet[(index + n) % alphabet.count]).uppercased()
            } else {
                answer += String(alphabet[(index + n) % alphabet.count])
            }
        }
    }
    
    return answer
}