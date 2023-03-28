func solution(_ a:Int, _ b:Int) -> String {
    let week = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
    
    var day = 0
    
    for i in 0..<a-1 {
        day += month[i]
    }
    day += b-1
    return week[day % 7]
}