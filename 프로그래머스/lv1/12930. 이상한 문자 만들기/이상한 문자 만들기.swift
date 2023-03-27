func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ")

    
    return arr.map {
        $0.enumerated().map {
            return $0.offset%2==0 ? $0.element.uppercased() : $0.element.lowercased()
        }.joined()
    }.joined(separator: " ")
}