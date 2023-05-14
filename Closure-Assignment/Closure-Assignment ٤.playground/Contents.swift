import Foundation

/*:
 ### Overview:
 In this assignment, you will be exploring higher-order functions in Swift, which are functions that take other functions as arguments or return functions as output. You will implement several common higher-order functions and use them to solve practical problems.

 ### Requirements:

 Implement the following higher-order functions in Swift:
 - Map
 - Filter
 - Reduce
 
 In this assignment, you will use the Book struct provided below to practice using higher-order functions in Swift.
 */
struct Book {
    var title: String
    var author: String
    var price: Double
    var nPage: Int
    var readingAge: Int
}
/*:
 You will be working with an array of Book instances:
 */


let book1 = Book (title: "learn swift ", author: "Ali ", price: 200 , nPage: 150 , readingAge: 12 )
let book2 = Book (title: "learn Phython ", author: "Mohammed ", price: 100 , nPage: 250 , readingAge: 13 )
let book3 = Book (title: "learn Java ", author: "Amal", price: 170 , nPage: 280 , readingAge: 15 )
let book4 = Book (title: "learn JavaScript ", author: "Nada", price: 180 , nPage: 170 , readingAge: 16 )
let book5 = Book (title: "learn c++", author: "Sultan", price: 190, nPage: 300 , readingAge: 18)



let allbooks = [ book1 , book2 , book3 , book4 , book5]


/*:
 - map(): Use the map() function to create a new array of book titles with author.
 - filter(): Use the filter() function to create a new array of books with reading age of 16 or higher.
 - reduce(): Use the reduce() function to find the total cost of all books in the array.
 - contains(): Use the contains() function to check if the array of books contains a specific book.
 */
let BookTitleWithAuthor = allbooks.map {"\($0.title) by \($0.author)"}
print(BookTitleWithAuthor)

let BooksWithReadingAge = allbooks.filter {$0.readingAge >= 16}
print(BooksWithReadingAge)

let totalCostOfBook = allbooks.reduce(0) {$0 + $1.price}
print(totalCostOfBook)

let checkSpecifiBook = allbooks.contains {$0.title == "learn swift "}
print(checkSpecifiBook)
