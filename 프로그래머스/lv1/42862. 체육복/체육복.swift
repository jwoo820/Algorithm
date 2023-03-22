import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var students: [Int] = Array(repeating: 1, count: n)
    for i in lost {
        students[i-1] = 0
    }
    
    for i in reserve {
        students[i-1] += 1
    }
    
    for i in 0..<n {
        if students[i] == 0 {
            // 앞쪽 비교
            if i > 0 && students[i-1] > 1 {
                students[i] = 1
                students[i-1] = 1
            // 뒤쪽 비교
            } else if i < n-1 && students[i+1] > 1 {
                students[i] = 1
                students[i+1] = 1
            }
        }
    }
    // print(students)
    return students.filter{$0 != 0}.count
}