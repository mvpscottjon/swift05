import Foundation

//******二維陣列  in myarray2

//myarray2()



//******** Dictionary in mydictionary


//mydic()



//*********set



//myset()








///****   以下為function

//取絕對值
func sevenAbs(num:Int) ->Int {
    return num < 0 ? -num : num

}


//乘除func
func fx(x:Int) -> Int {
    
    var result = 2 * x + 3
    return result

}

//呼叫要在function 下面  執行的是循序
var ret = fx(x: 123)

print(ret)



////*****sayYa
func sayYa(name:String, times:Int) {
//    var name:String = ""
//    var times:Int
//    print("Hello,\(name), \(times) ")

    for _ in 0..<times {
    print("Ya! \(name)")
    }

}

sayYa(name: "SEVEN", times: 4)



func dis(x0:Int, y0:Int, x1:Int, y1:Int) -> (dx:Int, dy:Int, dist:Int) {
    var dx = abs(x1 - x0)
    var dy = abs(y1 - y0)
    
    var dist =    Int(sqrt(Double(dx * dx + dy * dy)))
    return (dx, dy, dist)
}





var d = dis(x0: 1, y0: 2, x1: 3, y1: 4) //(Int, Int)
print(d.dx)
print(d.dy)
print(d.dist)


func dis2(p0:(x:Int, y:Int), p1:(x:Int, y:Int)) -> (dx:Int, dy:Int, dist:Int) {
    
    var dx = Int(abs(p0.x - p1.x))
    var dy = Int(abs(p0.y - p1.y))
    
   var dist =  Int(sqrt(Double(dx * dx + dy * dy)))

    
    
//    return (abs(p0.x-p1.x), abs(p0.y-p1.y), dist)
    return (dx, dy , dist)
}

var ddd = dis2(p0: (132,322), p1: (222,456))
print(ddd.dx)
print(ddd.dy)
print(ddd.dist)




//var x = sqrt(Double(2))
//var y = pow(Double(x), Double(x))
//print(x)
//print(y)
//
//
//
//////******陣列找出最大與最小值
////
func findMinMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil}
    var minV = array[0]
    var maxV = array[0]
    
    for i in 1..<array.count {
        if array[i] < minV {
            minV = array[i]
        }
        if array[i] > maxV {
            maxV = array[i]
        }
    
    }
    
    
    return (minV,maxV)
}

var a1:[Int] = [1,34,312,34,7,0,123]
if var minmax = findMinMax(array: a1) {  //避免空陣列
    print(minmax.min)
    print(minmax.max)}


//label 可以不用輸入參數名字
func test1(_ x : Int){
    print(x)

}

test1(2)




func sayHe(_ name:String = "World",_ times:Int = 2) {  // _可以不用輸入參數名字 default = "World"
    for _ in 0..<times {
    print("Hello, \(name)")
    }
    
    
}

//sayHe("Brad", times:2)
//sayHe(times: <#T##Int#>)
//sayHe(times: 4)
sayHe()
sayHe("brad",2)
//sayHe(,2) //不行
sayHe("Amy")


//****不確定傳幾個參數

func sum(_ num:Int...) ->Int {
    print(type(of:num))
    var sum = 0
//    if num.isEmpty {return 0}
    
    for v in num {
        sum += v
    }
    
    
    return sum
}


var a2 = sum(1,2,3,4,5)
var a3 = sum()
print(a2)
print(a3)




////***** file  多檔到一個路徑

func cp(target:String, _ filename: String...){
    for fname in filename {
        print("copying \(fname) to \(target)")
    }
    
}

cp(target: "dir1", "file1", "file2", "file3")

print("----------")

////****

func cp2(_ filename: String..., targer:String){
    for fname in filename {
        print("copying \(fname) to \(targer)")
    }
    
}

cp2("file1", "file2", "file3", targer: "dir1")


////////***** 若第二個也給_  就會錯  因為不知道第一個什麼時候結束  故不能省略
//func cp3(_ filename: String...,_ targer:String){
//    for fname in filename {
//        print("copying \(fname) to \(targer)")
//    }
//    
//}
//
//cp3("file1", "file2", "file3",  "dir1")



////****** swap   一定要inout   參數一定要加＆
func sevenswap( _ x:inout Int, _ y:inout Int){
    let temp = x
    x = y
    y = temp

}

var myx = 123
var myy = 456
sevenswap(&myx, &myy)
print(myx)
print(myy)


///*******  swap array HW1  可能 陣列為空, 陣列位置不存在

func swapArray(array:inout [Int], x1:Int, x2:Int) -> Array<Int>?  {
    if array.isEmpty {return nil}
    
    var array1:[Int] = array
    var pos1:Int = x1
    var pos2:Int = x2
    var temp = array1[pos1]
    array1[pos1] = (array1[pos2])
    array1[pos2] = temp
    
    
    
    
    
    return array1
}
//var a6:[Int] = []
var a6:[Int] = [1,2,3,4,5]
if var m7 = swapArray(array: &a6, x1: 1, x2: 2) {  //避免空陣列
    print(m7)
} else {print("array is empty")}


//
//var a7 = swapArray(array:&a6, x1:3,x2:0)
//print(a7)
