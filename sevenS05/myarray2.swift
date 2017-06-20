//
//  myarray2.swift
//  sevenS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


func myarray2(){
   
   
    
    //*****二維陣列
    
    
    var a1 = [[1, 2, 3], [4, 5], [],[6, 7, 8, 9]]
    print(type(of: a1))
    print(a1.count)  //四個元素
    print(a1[1].count)  //第1的元素內有兩個元素
    
    a1 += [[11,12]]  //須加等於二維陣列
    print(a1.description)
    
    a1.append(contentsOf: [[333,444],[555,666]])
    print(a1.description)
    
    
    a1[3].replaceSubrange(1...2, with: [100,200,300,400,500,600,700,800,900])  //這邊是一個元素  只需一維陣列
    //a1[3]陣列內 的1-2位置之間 取代為新的陣列
    print(a1.description)
    
    a1.replaceSubrange(1...2, with: [[100,200,300,400                                                                                                                                                                                  ]])  //這邊是一個元素  只需一維陣列
    //取代
    print(a1.description)
    a1.replaceSubrange(1...3, with: [[0,0,0]])  //取代１－３得陣列
    print(a1.description)
    
    print("--------")
    for (ii, vv) in a1.enumerated(){  //外圈即為二維
        
        
        for (i, value) in vv.enumerated() {   ///內圈 一維
            print("\(ii): \(i) => \(value)") }
    }
    
    print("--------")
    var a2 = [[000],[111],[222,333,444,555],[7589,6],[777,888]]
    for (ii,vv) in a2.enumerated() {
//    print("\(ii):\(vv)")
        
        for (i,v) in vv.enumerated() {
         print("\(ii):\(i)=>\(v)")
        }
    
    }
    
    
    

}
