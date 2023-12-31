////
////  Chapter2.swift
////  CLIStoryTemplate
////
//
//import Foundation



/*
 user select task
 user performs task
 if user gets task right, they get points and go to next task
 if user get task wrong, they do not get points and go to next task
 */
//
struct chapter2 {
    var points = 0
    var choiceA = "ChoiceA"
    var choiceB = "ChoiceB"
    let waterPathA = "waterPathA"
    let waterPathB = "waterPathB"
    let sealifePathA = "sealifePathA"
    let sealifePathB = "sealifePathB"
    let CoralPathA = "CoralPathA"
    let CoralPathB = "CoralPathB"
    let endOfQuest = "End of Quest"
//    if userInput == ("username")
//      print ("username")
}
func chapterTwo(username: String) {
    func myStory() {
                let username: String = username

        enum Weapon: String {
            case staff = "staff"
            case sword = "sword"
        }
        
        var weapon = Weapon.staff.rawValue
        var weapon1 = Weapon.sword.rawValue
        
        print("Zora, Mother of Land")
            print("\(username) you have entered Chapter 2.  Zora, Mother of Land:               Just like water she governs, her personality is “Ebb” and “Flo”.  She comes and goes with the Flow.  She has the characteristics of someone with Aspergers.  She’s very analytical.  When everything is understandable and easy going, so is she.  When things becomes irrational, not understandable, chaotic, she becomes enraged. She looses control and tries real hard to gain that control and rationality back.")
        
            print("It is soon realized a Super-powered negative energy has affected all of the elements of Harmonia into an unstable situation.  With this, Zora also becomes irrational.  When she’s calm, and flowing, she can fix everything and is more willing to work with someone else to fix things.")
        
            print("Congratulations, “username”, on completing Chapter 1 and acquiring the “Helmet” from the Earth Element.  With the Helmet and the \(weapon) you will be able to breathe under water and also control the minds of the inhabitants.  It will help you in this and future challenges.  Let’s see what we can do to help control/improve things for Harmonia.")
        
            print("You \(username), enter and see the distress going on in this Water element.  Debilitating water phenomenon is happening on planet Harmonia.  River banks are overflowing, sea-life is being compromised, and the coral reef has been affected.  Zora doesn’t understand what and why things are happening the way they are.  She is engulfed with rage and confusion.")
        
            print(" You, \(username), must decide what to do to help resolve some of these situations.  There are three (3) Challenges you encounter.  You will decide from Paths A or B to complete and gain points.  There is a maximum of ten (10) points for each challenged that can be earned.")
        
            print("Your first task is to tackle the flooding situation. You,“User” must complete this to begin the calming process.")
        }
    
    myStory()
        func makeChoice(){
            
        }
        enum choices {
            case A
            case B
        }
        var decision = chapter2()
        
        func challengeOne() -> Int {
            var score = 0
            var userInput = ""
            let waterPathA = ("Use the helmet to build the damns alone.")
            let waterPathB  = ("Use the helmet to command the beavers to help you build damns.")
            var aIsTrue: Bool = false
            var bIsTrue: Bool = false
            var choiceOutcome: String = ""
            print("\(userName) We're now in challenge 1.")
            print("You are now challenged with tackling the waters of Harmonia.  You must decided which path the go.  Select A or B")
            if let decison = readLine() {
                userInput = decison
            } else{
                print("Invalid input. Try Again.")
            }
            if userInput == "A" {
                print(waterPathA)
                aIsTrue = true
                score = 5
            }else if userInput == "B"{
                print(waterPathB)
                bIsTrue = true
                score = 10
                //print("Great job  With the help of the beavers, you’ve saved the town and was able to allow more individuals to get out safely.  You’ve earned 10 points.")
            }
//
//            let Decisions = ["A", "B"]
            let rewardPoints = ["Having handled the floods with the damns with the help of the helmet, you’ve temporarily stopped the water and allowed some individuals to get out safely. You’ve earned 5 points.", "Great job.  With the help of the beavers, you’ve saved the town and was able to allow more individuals to get out safely.  You’ve earned 10 points."]
            if aIsTrue{
                choiceOutcome = rewardPoints[0]
            } else if bIsTrue {
                choiceOutcome = rewardPoints[1]
            }
            
            print("You have chosen and completed \(userInput), your reward is \(choiceOutcome)")
            print("Score has been updated by \(score)")
//            if userInput == "" {
//                score = 5
//            } else {
//                score = 10
//            }
            return score
            
        }
        func challengeTwo() -> Int {
            var score = 0
            var userInput = ""
            let SealifeA = ("For non-mutated creatures, use the helmet to put animals in their correct habitat.")
            let SealifeB = ("For mutated creatures, Use the helmet to gather the mutated animals, creates a new habitat for them.")
            print("\(userName) We're now in challenge 2.")
            print("You are now challenged with tackling the Sealife of Harmonia.  You must decided which path the go.  Select A or B")
            if let decison = readLine() {
                userInput = decison
            } else{
                print("Invalid input. Try again.")
            }
            if userInput == "A" {
                print(SealifeA)
//                print("Using the helmet, you mentally send the messages to the non-mutated animals.  You guide them through the water back to their natural habitats.  These creatures can now continue to thrive.  You gain 5 points.")
            }else {
                print(SealifeB)
//                print("Using the helmet, you mentally send the messages to the mutated animals.  You guide them through the water to a new ecosystem.  These creatures can now thrive in this new environment.  You gain 10 points.")
            }
            let Decisions = ["A", "B"]
            let rewardPoints = [("Using the helmet, you mentally send the messages to the non-mutated animals.  You guide them through the water back to their natural habitats.  These creatures can now continue to thrive.  You gain 5 points."), ("Using the helmet, you mentally send the messages to the mutated animals.  You guide them through the water to a new ecosystem.  These creatures can now thrive in this new environment.  You gain 10 points.")]
            print("You have chosen and completed \(Decisions[0]), your reward is \(rewardPoints[0])")
            
            if userInput == "" {
                score = 5
            } else {
                score = 10
            }
       
            return score
        }
        func challengeThree() -> Int {
            var score = 0
            var userInput = ""
            let coralReefA  = ("Use helmet to replant more coral.")
            let coraReefB  = ("Use helmet to gather land inhabitants and sea creatures to gather all the debris that is around the coral.")
            print("\(userName) We're now in challenge 3.")
            print("You are now challenged with tackling the CoralReef of Harmonia.  You must decided which path the go.  Select A or B")
            if let decison = readLine() {
                userInput = decison
            }
            if userInput == "" {
                //print what would happen if you select a
                print(coralReefA)
                print("Good job! With you ingenuity, you have replanted new coral to rebuild the reef.  You gain 5 points.")
                //else print what would happen if you select b
            }else {
                print(coraReefB)
                print("Not only do to rebuild the coral reef you and the sea creatures removed debris from the waters so that all can thrive. You gain 10 points.")
            }
                let Decisions = ["A", "B"]
                let rewardPoints = [("Good job! With you ingenuity, you have replanted new coral to rebuild the reef.  You gain 5 points."),("Not only do to rebuild the coral reef you and the sea creatures removed debris from the waters so that all can thrive. You gain 10 points.")]
                
                print("You have chosen and completed \(Decisions[0]), your reward is \(rewardPoints[0])")
                
                if userInput == "A" {
                    score = 5
                } else {
                    score = 10
                }

                return score
            
        }
            let score1 = challengeOne()
            let score2 = challengeTwo()
            let score3 = challengeThree()
            
            var challenges: [Int] = [score1, score2, score3]
            
            
            
            func totalPoints(challenges: [Int]) -> Int {
                var score = 0
                for challenge in challenges {
                    score += challenge
                }
            
                return score
                print("End Of Quest Congratulations!! You have helped Zora and the water part of Harmonia.  With the tools you've acquired and used successfully, you built new damns to stop the river flow, you saved and helped the sealife ecosystem, and you help to rebuild the coral reef.  You pulled the water Life of Harmonia back into a smooth flow and balance.  For your efforts you receive an additional tool.  A Shield to protect yoou as you carry on to your next quest.  Use all those tools to the best of you ability.  Be safe and careful on your travels.")
            }
        
            print(totalPoints(challenges: challenges))
            
            //Struct
            
            //("Water Challenge 1")
            
            
            
           
  
        }
   

