//
//  mydictionary.swift
//  sevenS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

func mydic() {
    
    //Dictionary 很像Json
    var dic1 = ["name":"Brad", "gender":"male", "age":"18"]  //Distionary<String?, String?>
    print(type(of:dic1))
    print(dic1["name"])
//
    dic1["weight"] = "80"    //直接加key value
    print(dic1.description)
//foreach to print
    for (key, value) in dic1 {
        print("\(key) => \(value)")
        
        
    }

    
    dic1["weight"] = "65"   //  後面蓋前面
    print(dic1.description)
//
    var dic2 = [1:"OK", 3:"III", 4:"Brad"]   //注意key 跟 value的順序
    
    
//    dic2 = [:] //清空
    print(dic2.description)
    dic2[4] = "no"
    
//        dic2["name"] = "seven"  //順序錯誤 無法加上去
    dic2[80] = "180"
    dic2[70] = "70"
    dic2.updateValue("Jon", forKey: 5)

//
    dic2.updateValue("Brad Pit", forKey: 4)  //置換key4 或新增
    
    print(dic2.description)
//
//    
//    //補充 清除陣列
//    var  a1 = [12,3,4,54]
//    print(a1.description)
//    a1 = []
//    print(a1.description)
//    

}
