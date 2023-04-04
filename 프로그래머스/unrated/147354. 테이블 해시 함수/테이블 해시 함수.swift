import Foundation

func solution(_ data:[[Int]], _ col:Int, _ row_begin:Int, _ row_end:Int) -> Int {
    var table = data.sorted{ 
        if $0[col-1] == $1[col-1] {
            return $0[0] > $1[0]
        } else {
            return $0[col-1] < $1[col-1] 
        }
    }
    
    var answer = 0
    
    for i in row_begin-1...row_end-1 {
        answer ^= table[i].reduce(0){$0 + $1%(i+1)}
    }
    
    return answer 
    // return table[row_begin-1...row_end-1].reduce(0){ 
    //     $0 ^= $1.reduce(0){$0 + $1%} 
    // }
}