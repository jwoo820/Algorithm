import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let card = sizes.map{$0.sorted()}
    let col = card.flatMap{$0[0]}.max()!
    let row = card.flatMap{$0[1]}.max()!
    
    
    return col*row
}