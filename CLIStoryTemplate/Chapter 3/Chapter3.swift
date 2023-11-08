//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation


// Character & boss struct
struct User {
    var username: String
    var userheatlh: Int
}
struct boss {
    let bossname = "Scorn"
}
var bossHealth = 100
//array for attacks on boss
let userAttackOptions = [
    ("Sword Attack", 25),
    ("Lightning Spell", 40),
    ("Staff Attack", 15)
]

//function for boss fight
func userChoiceBattleSequence() -> Int {
    print("Scorn is here, defeat him!!")
    print("How do you wish to strike him first?")
    print("1. Sword Attack")
    print("2. Lightning Spell")
    print("3. Staff Attack")
    
    return makeChoice(totalNumberOfChoices: 3, completionHandler: userChoiceBattleSequence)
}

func selection<T>(options: [T], userChoice: Int) {
    print(options[userChoice-1])
}

var name1 = User(username: "Hero", userheatlh: 100)

func loreText() {
    print("Verryyyy goood choice there \(name1.username), well we'd better get you started on the path of death you will be walking. The Flames of Scorn have reached a point where we need you to quel his wrath and kill him before it's too late for the planet. You are almost over with this journey but this might be the true test of your character and will to save the Earth.")
}

func loreText2() {
    print("Good job landing a devestating blow to Scorn, now that you've proven to be a force in his realm he'll surely come to challenge you for his continued reign of terror over the region. Here he comes prepare for a battle \(name1.username).")
}


func getUserChoice() -> Int {
    print("Welcome to the Infernos Embrace, where fires always rage and the dead never rest. Are you Ready?")
    print("1. yes")
    print("2. also yes")
    print("Enter the number of your choice: ")
    
    return makeChoice(totalNumberOfChoices: 2, completionHandler: getUserChoice)
}

func makeChoice(totalNumberOfChoices: Int, completionHandler: () -> Int) -> Int {
    if let choice = Int(readLine() ?? "0"), choice >= 1, choice <= totalNumberOfChoices {
        return choice
    } else {
        print("Invalid choice. Please enter a valid number.")
        return completionHandler()
    }
    
}

enum Responses {
    case one(Int)
    case two(Int)
    case three(Int)
    
    var input: Int {
        switch self {
        case .one(1):
            return 1
        case .two(2):
            return 2
        case .three(3):
            return 3
        default: print("Invalid Choice please enter a valid Number")
            return 0
        }
    }
}
func getUserChoice2() -> Int{
    print("How do you wish to first hurt Scorn and try to calm his Fury of the underworld?")
    print("1. Launch a fell swoop of rain over the fires that plague the forests.")
    print("2. Send a riptide from the ocean to calm the Lava that spews from the ground.")
    print("3. Blast a gust of wind to clear the air of falling Ashes")
    
    return makeChoice(totalNumberOfChoices: 3, completionHandler: getUserChoice2)
}
var value: Int = getUserChoice2()

let selectionTwo: [String] = [
    "After launching a fell swoop of rain over the fires, you have saved counltess lives and even saved an ancient temple and civilization from the wrath of Scorn",
    "After sending a riptide from the ocean to calm the lava flow, you have saved thousands of wildlife and stopped Scorn from destroying the structures we built",
    "After blasting a gust of wind to clear the ashes, you have saved thousands of plants and critters and stopped Scorn from poisoining the air and ground with his death pedals"
]

//running story
func chapterThree() {

    getUserChoice()
    loreText()
    selection(options: selectionTwo, userChoice: getUserChoice2())
    loreText2()
    while bossHealth > 0 {
        
        print("Available Attacks:")
        for (index, attack) in userAttackOptions.enumerated() {
            print("\(index + 1). \(attack.0)")
        }
        
        // Ask the player to choose an attack
        print("Choose an attack (1-\(userAttackOptions.count)):")
        
        if let choice = readLine(), let attackIndex = Int(choice), attackIndex >= 1, attackIndex <= userAttackOptions.count {
            let selectedAttack = userAttackOptions[attackIndex - 1]
            let damage = selectedAttack.1
            print("\(name1.username) uses \(selectedAttack.0) against Scorn!")
            bossHealth -= damage
            print("Scorn loses \(damage) health.")
        } else {
            print("Invalid choice. Please enter a valid number.")
        }
    }
    print("Scorn has been defeated by \(name1.username)!")
//    selection(options: userAttackOptions, userChoice: userChoiceBattleSequence())
    

}
