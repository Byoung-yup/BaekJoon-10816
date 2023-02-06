//
//  main.swift
//  BaekJoon#10816
//
//  Created by 김병엽 on 2023/02/07.
//

import Foundation

func solution() {
    
    let N = Int(readLine()!)!
    var nArr = readLine()!.split(separator: " ").map { Int(String($0))! }
    let M = Int(readLine()!)!
    let mArr = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    nArr.sort()
    
    var dict: [Int: Int] = [:]
    var result: [Int] = []
    
    for i in nArr {
        if dict.keys.contains(i) { dict[i]! += 1 }
        else { dict[i] = 1 }
    }
    
    for i in mArr {
        if dict.keys.contains(i) { result.append(dict[i]!) }
        else { result.append(0) }
    }
    
    print(result.map { String($0) }.joined(separator: " "))
}

solution()
