//1.4.44 - Birthday problem
var array = [Int:Int]()

func randomInt(min: Int, n:Int) -> Int {
    return min + Int(arc4random_uniform(UInt32(n - min + 1)))
}


func run(){
    
let n = 1000
for _ in 1...n {
    let x = randomInt(min:0,n:n)
    if(array[x] == nil)
    {
        array[x] = 1
    }
    else
    {
        array[x] = array[x]! + 1
    }
}

print("Print result:")
for i in array
{
    print("Value \(i.key) found \(i.value) times")
   
    }
    print("Hypotesis:")
    let pi = Double.pi
    let root = Double(pi) * Double(n) / 2
    print("Square \(pi)*\(n) / 2 = \(sqrt(root))")
}

//Run the program.
run()



//1.4.45 - Coupon collector problem
var couponDic = [Int:Int]()

func couponRandomInt(min: Int, n:Int) -> Int {
    return min + Int(arc4random_uniform(UInt32(n - min + 1)))
}


func couponRun(){
    for _ in 1...100 {
        let x = randomInt(min:0,n:1000)
        if(couponDic[x] == nil)
        {
            couponDic[x] = 1
        }
        else
        {
            couponDic[x] = couponDic[x]! + 1
        }
    }
    
    print("Print result:")
    for i in couponDic
    {
        print("Value \(i.key) found \(i.value) times")
        let n =  Double(1000)
        print("\(n)")
    }
}

//Run the program.
couponRun()
