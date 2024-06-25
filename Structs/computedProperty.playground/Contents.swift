import Cocoa

//newValue, vacationRemaining özelliğine atanmış olan yeni değeri tutar.

//vacationRemaining özelliği ayarlandığında vacationAllocated otomatik olarak doğru bir şekilde güncellenir.

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    }
    var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)

    archer.vacationTaken += 4

    archer.vacationRemaining = 5  //newValue

    print(archer.vacationAllocated)



