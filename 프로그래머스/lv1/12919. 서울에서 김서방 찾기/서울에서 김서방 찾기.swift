func solution(_ seoul:[String]) -> String {
    var index = 0
    for (i, value) in seoul.enumerated() {
        if value == "Kim" { index = i }
    }
    
    return "김서방은 \(index)에 있다"
}