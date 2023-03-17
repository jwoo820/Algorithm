import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dic = ["R": 0, "T": 0,"C": 0,"F": 0,"J": 0,"M": 0,"A": 0,"N": 0]
    var answer = ""
    for (index, value) in survey.enumerated() {
        switch choices[index] {
            case 1...3:
            dic[String(value.first!)]! += 4-choices[index]
            // case 4:
            case 5...7:
            dic[String(value.last!)]! += choices[index]-4
            default:
            break
        }
    }

    // print(dic)
    
    answer += dic["R"]! >= dic["T"]! ? "R" : "T"
    answer += dic["C"]! >= dic["F"]! ? "C" : "F"
    answer += dic["J"]! >= dic["M"]! ? "J" : "M"
    answer += dic["A"]! >= dic["N"]! ? "A" : "N"
    return answer
}