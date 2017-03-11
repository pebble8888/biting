//
//  BigInt.swift
//  bigint
//
//  Created by pebble8888 on 2016/06/09.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

import Foundation

infix operator **

/**
 * aのb乗
 */
func ** (a:Int64, b:Int64) -> Int64
{
    assert(b>=0)
    var v:Int64 = 1
    for _ in 0 ..< b {
        v *= a
    }
    return v 
}

/**
 * v:a未満の2以上のすべての素数のリスト
 * a:素数かどうか判定する値(2以上)
 */
func isPrime(_ v:[Int64], _ a:Int64) -> Bool {
    assert(a>=2)
    if a == 2 {
        return true
    }
    for i in v {
        // 余り
        let r:Int64 = a % i 
        if r == 0 {
            // 割り切れた
            return false
        }
    }
    // 割り切れないので素数
    return true
}

// 指定した値以下の2以上の素数のリスト
func primes(_ a:Int64) -> [Int64] {
    assert(a>=2)
    if a == 2 {
        return [2]
    }
    var v:[Int64] = primes(a-1)
    if isPrime(v,a) {
        v.append(a)
    }
    return v
}
