import Cocoa

class Teachers {
    let hours: Int
    
    init(hours:Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I'm working \(hours) hours a day.")
    }
}

class Physics : Teachers {
    func work(){
        print("I'm confusing students \(hours) hours")
    }
       override func printSummary(){
            
            print("Who wouldn't wanna know about Newton's laws? I'm trying to teach them for \(hours) hours everyday")
            
        }
    }


class Math : Teachers {
    func work(){
        
        print("I'm the most working one with \(hours) hours...")
    }
}

let burak = Physics(hours:4)
let ali = Math(hours:8)
burak.work()
ali.work()


//En üstteki class özellikleri altta yeni oluşturulanlara geçer.
//Örneğin üstteki printSummary fonksiyonunu alttaki classlar için özelleştirmek istiyorsak override kullanmalıyız.
let hakan = Math(hours: 7)

hakan.printSummary() //Bu en üstteki genel durumu kullandı Math için override yapılmadığından

burak.printSummary() //Override'da belirtileni yazdırır.

