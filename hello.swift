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
//for i in stride(from: 1, to: 100_000_000, by: 10){print(verbalizeNumber(count: i))} 