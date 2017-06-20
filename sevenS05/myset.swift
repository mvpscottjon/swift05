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
    
    print(type(of:set1))
    
    set1.insert(123)
    set1.insert(321)
    set1.insert(999)
    set1.insert(3200)
    set1.insert(3909)
    set1.insert(123)
    set1.insert(123)   //加不進去  因為不能重複
    print(set1.description)
    print(set1.count)
    
    
    
    //set1 = []  ////清空
    //print(set1.description)
    //print(set1.count)
    
    print("-----")
    
    for num in set1.sorted() {
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
