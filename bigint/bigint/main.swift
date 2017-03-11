//
//  main.swift
//  bigint
//
//  Created by pebble8888 on 2016/06/09.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

import Foundation


//let a:Int64 = 2
//let b:Int64 = a ** 3
//print(b)

// 1000以下の素数リストを表示
print(primes(1000))

// フェルマーの素数定理
// p:素数
// すべての自然数に対して、n^p - n を p で割った余りは 0 である
for p in primes(10) {
    for n in Int64(2) ... Int64(10) {
        let m = ((n ** p)-n) % p  
        print("n:\(n) p:\(p) n^p:\(n ** p) n^p-n:\((n ** p)-n) 余り:\(m)")
    }
}
