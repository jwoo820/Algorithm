import Foundation

func solution(_ r1:Int, _ r2:Int) -> Int64 {
    // x*x + y*y = r*r
    var answer: Int64 = 0
    var r1 = Double(r1)
    var r2 = Double(r2)
    // x좌표 탐색
    for i in Array(1...Int(r2)).reversed() {
        // 해당 x좌표에서 가질 수 있는 y좌표의 최소, 최대 정수 값을 구하기 
        var i = Double(i)
        var maxY = floor(sqrt(r2*r2 - i*i))
        var minY = 0.0 
        if i > r1 {
            
        } else {
            minY = ceil(sqrt(abs(r1*r1 - i*i)))
        }
        // print(maxY, minY)
        answer += Int64(maxY)-Int64(minY)+1
    }
    
    return answer*4
}