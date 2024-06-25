import Cocoa

struct Album {
    let title: String
    let artist: String
    let releaseDate: Int
    
    func printSummary(){
        print("\(title) by \(artist) released in \(releaseDate)")
        
    }
}

let album = Album(title: "Different World", artist: "Alan Walker", releaseDate: 2018)

album.printSummary()

let starboy = Album(title: "Starboy", artist: "The Weekend", releaseDate: 2016)

let phases = Album(title: "Phases", artist: "Chase Atlantic", releaseDate: 2019)


print(starboy.releaseDate)

print(phases.releaseDate)


struct Book {
    
    let name: String
    var pages: Int
    let author: String
    var currentPage: Int
    
   mutating func read(pages:Int){
        
       if currentPage + pages <= pages {
           
           currentPage += pages
           print("You have read \(pages) pages, you're now on \(currentPage). page")
           
       } else {
           print("You can't really read more than what we have in the book...")
           
       }
      
        
    }
    
    func progress() -> Double {
        return (Double(currentPage)/Double(pages)) * 100
        
    }
    
}

var book = Book(name: "White Fang", pages: 298, author:"Jack London", currentPage: 25)

book.read(pages: 30)

print("Current page: \(book.currentPage)")

print("Progress: \(book.progress())%")

book.read(pages: 250)
