import Foundation

func solution(_ rsp:String) -> String {
    var answer = ""
    for str in rsp.map{String($0)} {
        switch str {
        case "2":
        answer += "0"
        case "0":
        answer += "5"
        case "5":
        answer += "2"
        default:
        break
    }
    }

    return answer
}