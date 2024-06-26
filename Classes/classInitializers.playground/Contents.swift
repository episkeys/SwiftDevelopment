import Cocoa

class Animal {
    
    let name: String
    init(name: String) {
        self.name = name
    }
    func makeSound(){
        print("Animal Sound")
        
    }
}

class Dog:Animal {
    
    let breed: String
        
    // Alt sınıfın başlatıcısında super.init çağrısı yapılarak doğru şekilde örnek oluşturma
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name:name) // Üst sınıfın başlatıcısını çağırıyoruz
    }
    override func makeSound() {
        print("Hav!")
    }
}
let myDog = Dog(name: "Max", breed: "Golden Retriever")

myDog.makeSound()
