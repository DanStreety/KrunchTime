//
//  main.swift
//  CLIStoryTemplate
//

import Foundation

let staff: String = "staff"
let sword: String = "sword"
let shield: String = "shield"
var userName: String = ""
print("Please enter your name:")

if let username = readLine() {
    print("Hello, \(username)!")
     userName = username
} else {
    print("Why are you being so coy?")
}
func readStory() {
    chapterOne()
    chapterTwo(username: userName)
    chapterThree()
    //chapterFour()
    chapterFive()
}

readStory()



//var weapons: Set = ["staff", "sword", "shield"]
//var Assessories: Array<String> [""]
//weapons.insert(contentsOf: ["helmet"], at:Int)
