import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftPos = 10 // * -> 10
    var rightPos = 12 // # -> 12
    var handed = hand == "right" ? "R" : "L"
    
    var answer = ""
    
    for i in numbers {
        let number = i == 0 ? 11 : i
        switch (number) {
            case 2, 5, 8, 11:
            let leftTemp = abs(number - leftPos)
            let rightTemp = abs(number - rightPos)
            
            var leftDis = leftTemp/3 + leftTemp%3
            var rightDis = rightTemp/3 + rightTemp%3
            
            if leftDis == rightDis {
                answer += handed
            } else {
                answer += leftDis < rightDis ? "L" : "R"
            }
            
            if answer.last == "L" {
                leftPos = number
            } else {
                rightPos = number
            }
            
            case 1, 4, 7:
            answer += "L"
            leftPos = number
            case 3, 6, 9:
            answer += "R"
            rightPos = number
            default:
            break
        }
    }
    
    return answer
}