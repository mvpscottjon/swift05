//
//  poker1.swift
//  sevenS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

func pokker() {

    
    
    //
    //var test = [4, 5, 6, 7, 1, 2, 45]
    ////test.sort()
    ////print(test.description)
    //
    //var test2 = test.sorted(by: < )  //這個有return 可保留原有的跟排序的
    //
    //print(test.description)
    //print(test2.description)
    
    
    
    
    
    //洗牌
    
    var poker:[Int] = Array()
    var rand, rb, temp : Int
    
    for i in 0..<52 {
        //    poker[i] = i ////會錯 因為本來陣列內沒有元素
        poker += [i]  //需要自己加上去或append
    }
    
    //第j項---->與最後一項交換
    
    for j in 0..<51 {
        rb = 52 - j
        rand = Int(arc4random_uniform(UInt32(rb)))
        
        temp = poker[rb-1]
        poker[rb-1] = poker[rand]
        poker[rand] = temp
        
        
        
    }
    
    print(poker.description)
    
    //發到四個玩家手上
    
    var players:[[Int]] = [[], [], [], []]
    
    for (k, value) in poker.enumerated() {
        //  [poker[1]] => player[[1]]
        //      players[k] += [poker[k]]
        
        players[k%4] += [value]
        
        
    }
    print(players[1].description)
    
    
    
    //攤牌 加牌色 加理牌
    
    var suit:[String] = ["黑桃","紅心", "方塊", "梅花"]
    var value:[String] = ["A ", "2 ", "3 ", "4 ","5 ","6 ","7 "," 8", "9 ", "10 ", "J ", "Q ", "K "]
    
    
    for (l, player) in players.enumerated() {
        //    for (m, card) in player.enumerated() {
        //    print("\(suit[card/13])\(value[card%13]) ", terminator: "")   //enumerated 列舉
        
        
        //player.sort()  ==>為什麼不能用？
        var tempp = player.sorted()
        for j in 0..<tempp.count {
            var card = player[j]
            print("\(suit[card/13])\(value[card%13]) ", terminator: "")
            //count的方式
            
            //        
            //        for j in 0..<player.count {
            //            var card = player[j]
            //            print("\(suit[card/13])\(value[card%13]) ", terminator: "")
            //            //count的方式
            
        }
    }
    


}
