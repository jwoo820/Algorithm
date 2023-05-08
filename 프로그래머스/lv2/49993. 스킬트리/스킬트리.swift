import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    for tree in skill_trees {
        let str = tree.filter{ skill.contains($0) }
        if skill.starts(with: str) { answer += 1 }
    }
    
    return answer
}