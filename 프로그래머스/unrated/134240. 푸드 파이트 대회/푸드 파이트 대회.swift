import Foundation

func solution(_ food:[Int]) -> String {
    var arragement = ""
    
    for i in 1..<food.count {
        arragement += String(repeating: String(i), count: food[i]/2)
    }    
    return arragement+"0"+arragement.reversed()
}