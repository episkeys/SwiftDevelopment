import Cocoa

class Example {
    var value: Int
    
    init(value: Int) {
        self.value = value
        print("Example instance initialized with value \(value)")
    }
    
    deinit {
        print("Example instance with value \(value) is being deinitialized")
    }
}

func createInstance() {
    let example = Example(value: 42)
    // example burada kullanılabilir
}

createInstance()
// createInstance fonksiyonu sona erdiğinde example instance'ı bellekten silinir
