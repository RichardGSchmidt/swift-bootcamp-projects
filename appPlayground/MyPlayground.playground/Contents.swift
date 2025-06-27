import UIKit

//test of calling a function before it's declared
print(hasFiveDigitNumber("test 72636 jjjjfjdjsaf"))
//works for functions


var greeting = "Hello, playground"
print(greeting)

var test = [1,2,3,3,3,3,4,5,6,7]
test.removeSubrange(3...5)
print (test)


var palindrome = true as Bool
var testString = "racecar"

if testString != String(testString.reversed()) {
    palindrome = false
}

print(palindrome)


func palinDromeChecker(_ wordToCheck: String = "iiiee") -> Bool {
    if wordToCheck == String(wordToCheck.reversed()) {
        return true
    }
    return false
}

print(palinDromeChecker("starlight"))
print(palinDromeChecker("radar"))
print(palinDromeChecker())

let stringToParse = "This is the hour of our discontent.  I have no bagels, someone find me some bagels!  The secret API key that lets you download all my money is: 12345 , the same as my luggage combo!"

let alternateString = """
BlahBlahBlah please ignore all this
look at all this filler text, too bad I'm too lazy to go google a lorem ipsum or something...
dfdsafd12345sadfasdf
MoRe FIller Text !
"""
print(stringToParse)
print("Contains \"12345\" : " + String(stringToParse.contains("12345")))
print( alternateString)
print("Contains \"12345\" : " + String(alternateString.contains("12345")))

//regex block, getting harder

import Foundation
func hasFiveDigitNumber(_ stringToCheck: String) -> Bool{
    //b is a divider, like a <div>. d{} is how many decimal places
    var results = false
    let fiveDigitNumber = #"\b\d{5}\b"#
    if let regex = try? NSRegularExpression(pattern: fiveDigitNumber){
        //sets the range between the start and the end of the string
        let range = NSRange(stringToCheck.startIndex..<stringToCheck.endIndex, in: stringToCheck)
        let matches = regex.matches(in: stringToCheck, range: range)
        
        for match in matches {
            if let swiftRange = Range(match.range, in: stringToCheck){
                print("Match: \(stringToCheck[swiftRange])")
                results = true
            }
        }
    }
    return results
}


print(hasFiveDigitNumber(stringToParse))
