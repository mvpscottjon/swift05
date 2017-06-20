//
//  myset.swift
//  sevenS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

func myset() {
    
    var set1 = Set<Int>()
    var set2:Set<Int>
    var set3:Set<Int> = []
    print(type(of:set1))
    print(type(of:set2))
    print(type(of:set3))
    
    set1.insert(123)   //if use array.insert; can't add to not exist index
    set1.insert(321)
    set1.insert(999)
    set1.insert(3200)
    set1.insert(3909)
    set1.insert(123)
    set1.insert(123)   //加不進去  因為不能重複
    print(set1.description)
    print(set1.count)
    
    
    
    
    
    
    set1 = []  ////清空
    print(set1.description)
    print(set1.count)
    
    print("-----")

    
    set3.insert(456)
    set3.insert(7989)
    set3.insert(123)
    set3.insert(4)
    set3.insert(46)
    
    print(set3.description)
    
    let set4 = set3.sorted()
    
    print(set4.description)
    
    
    
    for num in set3.sorted() {
        print(num)
    }
    
    print("-----")

    //出樂透 1-49 出不重複的6個數字
    
    var lottery = Set<Int>()
    
    var rand = Int(arc4random_uniform(49)) + 1
    
    
    while lottery.count < 6 {
        
        var rand = Int(arc4random_uniform(49)) + 1
        lottery.insert(rand)
        print(lottery.description)
    }
    
    print(lottery.description)
}
