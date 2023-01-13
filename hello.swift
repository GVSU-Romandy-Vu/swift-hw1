//Romandy Vu

//Problem 1 (3 pts): Define the following variables/constants:

//a constant myString that has implicit type String and value "hello".
//constants defined with let
let myString = "hello"

//A variable cost that has implicit type Double and value 3.14
//var for mutables.
var cost = 3.14

//A constant cnt that has explicit type Int and Value 2
let cnt: Int = 2

//A variable shouldWe that is typed as a boolean value and set to true
var shouldWe: Bool = true

//An integer constant assigned the value of 11 hexadecimal.
let eleven_in_hex: Int = 0xb

//An integer constant assigned the binary equivalent of decimal 10
let ten_in_binary: Int = 0b1010

//Problem 2 (1 pts): Use the \() operator to form a string from string literal data and a floating point calculation.
var problem2_name = "John"
var problem2_num: Float = 0.1 + 0.2
var problem2_combine: String = "The name is \(problem2_name) and 0.1 + 0.2 is \(problem2_num)"

//Problem 3 (2 pts): Use arrays in Swift to accomplish the following:

//Define an array that consists of 3 string values: “queen”, “worker” and “drone”.
var problem3_array: [String] = ["queen", "worker", "drone"]

//Use the print function to print out the first entry in the array.
print(problem3_array[0])

//Use the append() method to add an additional entry of “honey” to the array.
problem3_array.append("honey")

//Use the += operator to add the ["are", "us"] to the array.
problem3_array += ["are", "us"]

/*Problem 4 (2 pts): Write two different styles for loops (e.g. for item in, and for
(index,value) in enumerated()) that iterate through the array created in problem 3 and
print the values. 

In the first example print only the value, 
*/
for item in problem3_array
{
    print(item)
}
//for the second each index should be printed with the value. e.g. “Item #0 is queen” …
for (index, value) in problem3_array.enumerated()
{
    print("Item #\(index) is \(value)")
}

/*Problem 5 (2 pts): Create a variable that is explicitly typed as a dictionary that maps
strings to floating point numbers. Initialize the variable to the data shown in the table
below which lists an author name and their comprehensibility score.
*/
var problem5_dictionary: [String:Float] = ["Mark Twain" : 8.9, "Nathaniel Hawthorne": 5.1, 
"John Steinbeck": 2.3, "C.S. Lewis": 9.9, "Jon Krakaur": 6.1]

//Problem 6 (2 pts): Using the dictionary created in the previous problem, do the following:

//Print out the floating-point score for “John Steinbeck”.
//Exclaimation point at the end becauase of Optional variable.
print((problem5_dictionary["John Steinbeck"]!))

//Add an additional author named “Erik Larson” with an assigned score of 9.2
problem5_dictionary["Erik Larson"] = 9.2

/*Write an if/else statement that compares the score of Jon Krakaur with Mark
Twain. Print out the name of the author with the highest score.*/
if( problem5_dictionary["Jon Krakaur"]! > problem5_dictionary["Mark Twain"]! ){print("Jon Krakaur")}
else if (problem5_dictionary["Jon Krakaur"]! < problem5_dictionary["Mark Twain"]!){print("Mark Twain")}
else{print("Same score.")}

/*
Problem 7 (1 pts): Use a for loop to iterate through the dictionary created in problem #5
and print out the content in the form of key: value, one entry per line.
*/
//No exclaimation point?
for (key, value) in problem5_dictionary
{
    print("\(key): \(value)")
}

//Problem 8 (1 pts): Write a for loop where the index variable ranges from 1 to 10. 
//Print the index variable during each iteration
for index in 1 ... 10
{
    print(index)
}

/*Problem 9 (1 pts): Write a for loop where the index variable ranges from 10 down to 1.
Print the index variable during each iteration*/
for index in (1 ... 10).reversed()
{
    print(index)
}

/*Problem 10 (1 pts) : Underscore notation can be used to craft a for loop where the index
variable is not needed. Use this notation to write a for loop that computes the product of
x * by using only the + operator.
*/
let multiple = 5
var x = 0
for _ in (1 ... 10)
{
    x = x + multiple
    print(x)
}

/*Problem 11 (1 pts): Use a while loop that computes the average of the scores in the
dictionary created in problem #5 above*/
var author_scores: [Float] = Array(problem5_dictionary.values)
var counter = 0
var average_author_score: Float = 0.0
while counter < author_scores.count
{
    average_author_score += author_scores[counter]
    counter += 1
}
average_author_score /= Float(author_scores.count)

/*Problem 12 (1 pts): Based on the outcome of problem #11, write an if/else statement that
prints out “Low” if the average is less than 5.0, “Moderate” if the average is >= 5 but less
than 7, or “High” if the average is >= 7.*/
if (average_author_score < 5.0){print("Low")}
else if (average_author_score >= 5.0 && average_author_score < 7.0){print("Moderate")}
else{print("High")}

/*Problem 13 (2 pts): Write a switch statement that examines a variable named count and
assigns a string variable named strOut the following values.*/
var count: Int = 1_000_000
var strOut: String = ""

switch count
{
    case 0:
    strOut = "none"
    
    case 1 ... 3:
    strOut = "a few"

    case 4 ... 9:
    strOut = "several"

    case 10 ... 99:
    strOut = "tens of"

    case 100 ... 999:
    strOut = "hundreds of"

    case 1000 ... 999_999:
    strOut = "thousands of"

    case 999_999...Int.max:
    strOut = "millions of"

    default:
    print("Value could be negative")
}

/*Problem 14 (1 pts): Write a Swift function named “verbalizeNumber” that takes an
input parameter of type Int, and returns a String. The function should utilize the switch
statement written in the previous exercise to map the integer value to a verbal description.*/
func verbalizeNumber(count:Int) -> String
{
    var strOut: String = ""

    switch count
    {
        case 0:
        strOut = "none"
        
        case 1 ... 3:
        strOut = "a few"

        case 4 ... 9:
        strOut = "several"

        case 10 ... 99:
        strOut = "tens of"

        case 100 ... 999:
        strOut = "hundreds of"

        case 1000 ... 999_999:
        strOut = "thousands of"

        case 999_999...Int.max:
        strOut = "millions of"

        default:
        print("Value could be negative")
    }
    return strOut
}
/*Problem 15 (2 pts): Write a for loop that iterates from 1 to 100_000_000 where your
index is updated on iteration by a step of 10. In the body of the loop print out a
meaningful string that is in part generated by calling the verbalizeNumber function
written in problem #14. [Note: this could take a while to run! After you’ve convinced
yourself your code works, maybe dial up the step to 10k or more so it doesn’t freeze your
playground!]*/
for i in stride(from: 1, to: 100_000_000, by: 10){print(verbalizeNumber(count: i))} 

/*Problem 16 (2 pts): Write another Swift function named verbalizeAndShoutNumber
that is identical to the one you wrote in problem 14, only all letters in the expression
returned are capitalized. Note, if you research how you can capitalize a string in Swift,
you should be able implement this function in a single line of code!*/
func verbalizeAndShoutNumber(count: Int) -> String{return verbalizeNumber(count).uppercased()}

/*Problem 17 (2 pts): Wrap the functionality you wrote in Problem 15 as a function named
expressNumbersElegantly that takes two parameters – an Int value, and a function that
takes an Int and returns a String. The implementation of this function should do exactly
what you did in 15 only:
● iterate up to the integer value passed in.
● call the function passed as a parameter instead of hardwiring the call to
verbalizeNumber.
● instead of printing out text, you should concatenate it into a single string and
return it to the caller.
● Define a variable of type function that takes an Int value and returns a String. Set
the variable to each of the two functions (verbalizeNumber and
verbalizeAndShoutNumber) and call expressNumbersElegantly each time you set
it.*/
func expressNumbersElegantly(intParameter:Int, function:(Int) -> String) -> String
{
    var concatenated_string: String = ""
    for i in 0 ... intParameter{ concatenated_string += function(i) + " "}

    return concatenated_string
}

var verbalizeNumberVariable: (Int) -> String = verbalizeNumber
expressNumbersElegantly(intParameter:10, verbalizeNumberVariable)

var verbalizeAndShoutNumberVariable: (Int) -> String = verbalizeAndShoutNumber
expressNumbersElegantly(intParameter:1000, verbalizeAndShoutNumberVariable)

/*Problem 18 (2 pts). a) Implement a class named Widget that implements the following
protocol:
protocol Thing {
func summarize() -> String
}
In addition the Widget class should define a String property called name, and an Int
property called cost. An initializer should be provided to create instances of Widget
passing in values for these two properties. The summarize() method should be
implemented to produce a string as described in the comments in the sample code shown
below.*/
protocol Thing{func summarize() -> String}

class Widget: Thing
{
    var name: String
    var cost: Int

    init(name: String, cost: Int)
    {
        self.name = name
        self.cost = cost
    }
    func summarize() -> String {return "I am a \(self.name). I cost \(self.cost)"}
}

/*b) After implementing Widget, introduce a new derived class ShinyWidget that
inherits Widget. ShinyWidget must override the summarize() method to produce
the slightly different string as shown in the comments in the sample code below.
Note: If the two classes are implemented correctly, the following code should produce the
strings described in the comments:
let w1 = Widget(name: "CoolWidget",cost: 10)
let w2 = ShinyWidget(name: "CoolerWidget", cost: 100)
print(w1.summarize()) // prints "I am a CoolWidget. I cost 10 dollars."
print(w2.summarize()) // prints "I am a SHINY CoolerWidget. I cost 100 dollars."*/
class ShinyWidget: Widget
{
    override func summarize() -> String
    {
        return "I am a SHINY \(self.name). I cost \(self.cost)"
    }
}


/*Problem 19 (2 pts): Given the following Swift array:
var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets
nuc 'em Joe!", "ah, there is just something about Swift"]
use the map function Array class to capitalize the first letter of each entry in the array.
Code up the capitalization code as a closure that is passed to the map function.*/

var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets nuc 'em Joe!", "ah, there is just something about Swift"]

//For some reason, the firstIndex of the string may not be 0.
print(famousLastWords.map({$0[$0.index($0.startIndex, offsetBy: 0)].uppercased() + $0.suffix($0.count - 1)}))

/*Problem 20 (3 pts): Implement an extension to the String type that adds two methods:
● encrypt() - returns an encoded version of the string where each character is
determined by the Unicode value of the original character + 1.

● decrypt() - returns an encoded version of the string where each character is
determined by the Unicode code of the original character - 1.

For example, if implemented correctly this code should behave as the comments indicate:
let str: String = "Hello World Secrets!"

let encodedStr = str.encrypt() // produces "Ifmmp!Xpsme!Tfdsfut"

print(encodedStr.decrypt()) // produces "Hello World Secrets!"

Hints: There are a number of ways you could implement this extension, but here are some
helpful hints that may suggest a path to a viable solution:

● String has a property unicodeScalars of type UnicodeScalarsView which is the
string’s value represented as a collection of scalar values.

● The map method could be used to iterate through a UnicodeScalarsView to
produce an array of encoded strings that could then be joined into a single string
using the join method on the string array.

● The map method will work fine, but an even more elegant approach would be to
use the reduce method on the UnicodeScalarsView!

● Whether you use map or reduce in your implementation, an Unicode value val
can be converted into a single character String as follows:
String(UnicodeScalar(UInt8(val)))*/
extension String
{
    func encrypt() ->String
    {
      var word: String = ""
      for ch in self.unicodeScalars{word += String(Unicode.Scalar(ch.value + 1)!)}
      
      return word
    }

    func decrypt() -> String
    {
      var word: String = ""
      for ch in self.unicodeScalars{word += String(Unicode.Scalar(ch.value - 1)!)}
      return word
    }
}
