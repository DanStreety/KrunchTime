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
            print("\(username) you have entered Chapter 2.  Zora, Mother of Land:               Just like water she governs, her personality is “Ebb” and “Flo”.  She comes and goes with the Flow.  She has the characteristics of someone with Aspergers.  She’s very analytical.  When everything is understandable and easy going, so is she.  When things becomes enraged,  irrational, not understandable, chaotic, she looses control and tries real hard to gain control and rationality.")
        
            print("It is soon realized a Super-powered negative energy has affected all of the elements of Harmonia into an unstable situation.  With this, Zora also becomes irrational.  When she’s calm, and flowing, she can fix everything and is more willing to work with someone else to fix things.")
        
            print("Congratulations, “username”, on completing Chapter 1 and acquiring the “Helmet” from the Earth Element.  With the Helmet and the \(weapon) you will be abel to breathe under water and also mind control the inhabitants.  It will help you in this and future challenges.  Let’s see what we can do to help control/improve things for Harmonia.")
        
            print("username” enters and sees the distress going on in this Water element.  Debilitating water phenomenon is happening on planet Harmonia.  River banks are overflowing, sea-life is being compromised, and the coral reef has been affected.  Zora doesn’t understand what and why things are happening the way they are.  She is engulfed with rage and confusion.")
        
            print(" You, “Username”, must decide what to do to help resolve some of these situations.  There are three (3) Challenges you encounter.  You will decide from Paths A or B to complete and gain points.  There is a maximum of five (3) points for each challenged that can be earned.")
        
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
            print("\(userName) We're now in challenge 1.")
            print("You are now challenged with tackling the waters of Harmonia.  You must decided which path the go.  Select A or B")
            if let decison = readLine() {
                userInput = decison
            }
            if userInput == "A" {
                print(waterPathA)
            }else {
                print(waterPathB)
            }
            let Decisions = ["A", "B"]
            let rewardPoints = [("Having handled the floods with the damns with the help of the helmet, you’ve temporarily stopped the water and allowed some individuals to get out safely. You’ve earned 2 points."), ("Great job.  With the help of the beavers, you’ve saved the town and was able to allow more individuals to get out safely.  You’ve earned 3 points.")]
            print("You have chosen and completed \(Decisions[0]), your reward is \(rewardPoints[0])")
            if userInput == "A" {
                score = 2
            } else {
                score = 3
            }
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
            }
            if userInput == "A" {
                print(SealifeA)
            }else {
                print(SealifeB)
            }
            let Decisions = ["A", "B"]
            let rewardPoints = [("Using the helmet, you mentally send the messages to the non-mutated animals.  You guide them through the water back to their natural habitats.  These creatures can now continue to thrive.  You gain 2 points."), ("Using the helmet, you mentally send the messages to the mutated animals.  You guide them through the water to a new ecosystem.  These creatures can now thrive in this new environment.  You gain 3 points.")]
            print("You have chosen and completed \(Decisions[0]), your reward is \(rewardPoints[0])")
            
            if userInput == "A" {
                score = 2
            } else {
                score = 3
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
            if userInput == "A" {
                //print what would happen if you select a
                print(coralReefA)
                //else print what would happen if you select b
            }else {
                print(coraReefB)
            }
                let Decisions = ["A", "B"]
                let rewardPoints = [("Good job! With you ingenuity, you have replanted new coral to rebuild the reef.  You gain 2 points."),("Not only do to rebuild the coral reef you and the sea creatures removed debris from the waters so that all can thrive. You gain 3 points.")]
                
                print("You have chosen and completed \(Decisions[0]), your reward is \(rewardPoints[0])")
                
                if userInput == "A" {
                    score = 2
                } else {
                    score = 3
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
            }
        
            print(totalPoints(challenges: challenges))
            
            //Struct
            
            //("Water Challenge 1")
            
            
            
           
  
        }
   

