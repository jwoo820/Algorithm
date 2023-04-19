import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    // 차량번호 : 시간
    var cars: [String: [Int]] = [:]
    // 차량번호: 요금
    var answer: [String: Int] = [:]
    
    
    for record in records {
        var split = record.components(separatedBy: " ")
        var time = split[0]
        var car = split[1]
        
        cars[car, default:[]] += [convertMin(time)]
    }
    
    for key in cars.keys {
        if cars[key]!.count%2 != 0 {
             cars[key]!.append(convertMin("23:59"))
        }
    }
    
    for car in cars {
        var num = car.key
        var times = car.value
        
        // 총 이용시간
        var timeSum = 0
        for i in stride(from: 0, to: times.count, by: 2) {
            timeSum += times[i+1] - times[i]
        }
        
        var basicFee = fees[1]
        var extraFee = 0
        if timeSum > fees[0] {
            let time = timeSum - fees[0]
            let fee = ceil(Double(time) / Double(fees[2]))
            extraFee = Int(fee)*fees[3]
            // extraFee = Int(ceil(Double(timeSum - fees[0]) / 10) * 10)*fees[3]
        }
        answer[num] = basicFee + extraFee
    }
    
    // print(answer)
    return answer.sorted{ $0.key < $1.key }.map{ $0.value }
}

func convertMin(_ time: String) -> Int {
    var split = time.components(separatedBy: ":")
    var hour = Int(split[0])!
    var minute = Int(split[1])!
    
    return hour*60 + minute
}