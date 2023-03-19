import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reported: [String: [String]] = [:]  // 신고당한사람 : 신고한 사람
    var idNumber: [String: Int] = [:]
    
    for (i, id) in id_list.enumerated() {
        idNumber[id] = i
    }

    // print("idNumber : ",idNumber)
    for id in Set(report) {
        var reporter = id.components(separatedBy: " ")
        reported[reporter[1], default: []] += [reporter[0]]
    }
    
    // print("reported" ,reported)
    var reportCount:[Int] = Array(repeating: 0, count: id_list.count)
    for i in reported {
        if i.value.count >= k {
            for j in i.value {
                reportCount[idNumber[j]!] += 1
            }
        }
    }
    return reportCount
}