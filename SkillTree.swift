//
//  main.swift
//  SkillTree
//  프로그래머스
//  스킬트리
//  Created by Park Jungwoo on 2022/12/13.
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var skillArr = Array(skill)
    var count = skill_trees.count
    
    for skill_tree in skill_trees {
        skillArr = Array(skill)
        for i in skill_tree {
            // 해당 스킬을 포함하고 있는지
            if !skill.contains(i) {
                continue
            } else {
            // 스킬트리 순서 판단
                if i == skillArr.first {
                    skillArr.removeFirst()
                } else {
                    count -= 1
                    break
                }
            }
        }
    }
    return count
}

print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))
