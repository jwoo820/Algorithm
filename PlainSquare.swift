//
//  main.swift
//  PlainSquare
//  프로그래머스
//  멀쩡한 사각형
//  Created by Park Jungwoo on 2022/03/17.
//

import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
 
    func gcd(a : Int, b : Int) -> Int{
        if(b==0) {
            return a
        }else {
            return gcd(a: b, b: a%b)
        }
    }

//  빗선이 지나가는 사각형의 갯수 : 가로 + 세로 - (가로 세로 최대공약수)
    
    return Int64(w*h - (w+h-gcd(a: w, b: h)))
}

print(solution(8, 12))
