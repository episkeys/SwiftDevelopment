import Cocoa

struct Game {
    
   var score = 0

}

var game = Game()

game.score += 1
print("Score is now: \(game.score)")
game.score += 5
print("Score is now: \(game.score)")

print()
print()
print()

// Bunu yapmak yerine "property observe" kullanımı uygun olur


struct Game2 {
    
    var score = 0 {
        didSet {
            
            print("Score is now: \(score)")
            
        }
    }
}

var game2 = Game2()
game2.score += 10
game2.score -= 3
game2.score += 1


struct App {
    var contacts = [String]() {
        
        willSet{
            print("Current value is : \(contacts)")
            print("New value will be : \(newValue)")
            
        }
        didSet{
            print("There are now : \(contacts.count) contacts")
            print("Old value was : \(oldValue)")
            
        }
    }
    
}
 var app = App()

app.contacts.append("Hakan")
app.contacts.append("Ceren")
app.contacts.append("Emre")
