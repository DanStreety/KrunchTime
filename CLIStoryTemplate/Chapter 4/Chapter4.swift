////
////  Chapter4.swift
////  CLIStoryTemplate
////
//
//import Foundation
//
//func chapterFour()  {
//    
//    // character struct
//    struct User {
//        var name: String
//        var hp: Int
//        var attack: Int
//        var items: String
//    }
//    var name1 = User(name: "jalen", hp: 100, attack: 25, items: "staff")
//    
//    print(name1.name)
//    struct QuestOutcome {
//        var Description: String
//        var hpchange: Int
//        
//    }
//    
//    struct Quest {
//        var descripton: String
//        var outcome: String
//    }
//    func LoreText() {
//        print("welcome to the world of the sky \(name1.name) where the air is no longer pure and where the three Tornados minions run wild under the Ruler of the sky Zephyr. zephyr can be found on the third and tallest mountain of the skyworld but be careful he guarded by the minions on the smaller mountains. lets get started head toward the mountains ")
//        
//        
//    }
//    func LoreText2() {
//        print("lore text 2")
//        
//    }
//    func getUserChoice() -> Int {
//        print("welcome to the sky world")
//        print("1. yes")
//        print("2. also you")
//        print("Enter the number of your choice: ")
//        
//        
//        return makeChoice(totalNumberOfChoices: 2, completionHandler: getUserChoice)
//            
//        
//    }
//    func makeChoice(totalNumberOfChoices: Int , completionHandler: () -> Int) -> Int {
//        if let choice = Int(readLine() ?? "0") {
//            return choice
//        } else{
//            print ("Invalid choice. Please enter a valid number.")
//            return completionHandler ()
//        }
//    }
//    enum Responses {
//        case one(Int)
//        case two(Int)
//        case three(Int)
//        
//        var input: Int {
//            switch self {
//            case .one(1):
//                return 1
//            case .two(2):
//                return 2
//            case .three(3):
//                return 3
//            default: print ("Invaild choice please enter a valid Number")
//                return 0
//                
//            }
//        }
//    }
//    func getUserChoice2() -> Int{
//        print("Good now we have made it to our first mountain. The minion that guards this mountain name is Gus. Be careful he might be small but he is known for using his air power for taking people breath away and attacking when you can't breathe. By the way this might be a good time to start using some of those new weapons you acquired on your journey so far. Like the helmet, breastplate, or goblet for practice because who knows what allies after this rim! WATCH OUT HERE HE COMES!!! plan your attack!")
//        print("*1 use your helmet to block the enemy from messing with your air quality and form a strike back to defeat the enemy")
//        print(" 2 use the breastplate special ability to absorb attacks coming from multiple people at once and resend them to sender with twice the power behind it")
//        print("3 use goblet to shoot the enemy out the sky")
//        
//        return makeChoice(totalNumberOfChoices: 3, completionHandler: getUserChoice2)
//    }
//    getUserChoice()
//    LoreText()
//    
//    var value: Int = getUserChoice2()
//    
//    if value == 1 {
//        print("good job you got it right")
//    }
//    else  if value == 2 {
//        print("wrong!!")
//    }
//    else if value == 3 {
//        print("wrong!!")
//    }
//    getUserChoice2()
//    LoreText()
//}
//
//////////////////////////////////
//
//
//
//
//////func chapterFour()  {
//    
//    // character struct
//    struct User {
//        var name: String
//        var hp: Int
//        var attack: Int
//        var items: String
//    }
//    var name1 = User(name: "jalen", hp:100, attack: 25,items: "staff")
//    
////    print(name1.name)
//    struct QuestOutcome {
//        var Description: String
//        var hpchange: Int
//        
//    }
//    
//    struct Quest {
//        var descripton: String
//        var outcome: String
//    }
//    func LoreText() {
//        print("Congratulations now that you have beat Gus its time to go to the next mountain.")
//        
//        
//    }
//    func LoreText2() {
//        print("lore text 2")
//        
//    }
//    func getUserChoice() -> Int {
//        print("welcome to Vortex Mountain")
//        print ("1. yes")
//        print("2. also you")
//        print("Enter the number of your choice: ")
//        
//        
//        return makeChoice(totalNumberOfChoices: 2, completionHandler: getUserChoice)
//            
//        
//    }
//    func makeChoice(totalNumberOfChoices: Int , completionHandler: () -> Int) -> Int {
//        if let choice = Int (readLine() ?? "0")  {
//            return choice
//        } else{
//            print ("Invalid choice. Please enter a valid number.")
//            return completionHandler ()
//        }
//    }
//    enum Responses {
//        case one(Int)
//        case two(Int)
//        case three(Int)
//        
//        var input: Int {
//            switch self {
//            case .one(1):
//                return 1
//            case .two(2):
//                return 2
//            case .three(3):
//                return 3
//            default: print ("Invaild choice please enter a valid Number")
//                return 0
//                
//            }
//        }
//    }
//    func getUserChoice2() -> Int{
//        print(" Now this mountain has two minions that guard it The Vortex Twins. These two are very dangerous and sometimes seem as one but really are two. There wind blows are very strong they usually aim at the chest to hurt there opponent! WATCH OUT HERE THEY COME!! plan your attack!")
//        print("1 use your helmet to block the enemy from messing with your air quality and form a strike back to defeat the enemy")
//        print("2 use the breastplate special ability to absorb attacks coming from multiple people at once and resend them to sender with twice the power behind it ")
//        print("3 use goblet to shoot the enemy out the sky")
//        
//        return makeChoice(totalNumberOfChoices: 3, completionHandler: getUserChoice2)
//    }
//   
//    
//    var value: Int = getUserChoice2()
////    
////    if value == 1 {
////        print("Wrong!!")
////    }
////    else  if value == 2 {
////        print("Good job you got it right!")
////    }
////    else if value == 3 {
////        print("Wrong!!")
////    }
//
//
//
//func chapterSix()  {
//    
//    // character struct
//    struct User {
//        var name: String
//        var hp: Int
//        var attack: Int
//        var items: String
//    }
//    var name1 = User(name: "jalen", hp:100, attack: 25,items: "staff")
//    
//    print(name1.name)
//    struct QuestOutcome {
//        var Description: String
//        var hpchange: Int
//        
//    }
//    
//    struct Quest {
//        var descripton: String
//        var outcome: String
//    }
//    func LoreText() {
//        print("congratulations you beat The Vortex Twins. Now on the third and last mountain. The mountain from the West")
//        
//        
//    }
//    func LoreText2() {
//        print("welcome to The Mountain From The West")
//        
//    }
//    func getUserChoice() -> Int {
//        print("welcome to the mountain of THE WEST")
//        print ("1. yes")
//        print("2. also you")
//        print("Enter the number of your choice: ")
//        
//        
//        return makeChoice(totalNumberOfChoices: 2, completionHandler: getUserChoice)
//            
//        
//    }
//    func makeChoice(totalNumberOfChoices: Int , completionHandler: () -> Int) -> Int {
//        if let choice = Int (readLine() ?? "0") {
//            return choice
//        } else{
//            print ("Invalid choice. Please enter a valid number.")
//            return completionHandler ()
//        }
//    }
//    enum Responses {
//        case one(Int)
//        case two(Int)
//        case three(Int)
//        
//        var input: Int {
//            switch self {
//            case .one(1):
//                return 1
//            case .two(2):
//                return 2
//            case .three(3):
//                return 3
//            default: print ("Invaild choice please enter a valid Number")
//                return 0
//                
//            }
//        }
//    }
//    func getUserChoice2() -> Int{
//        print("The sky world is a danger place and zephyr is a mean ruler and is taking all the air from the sky people. how should you go about defeating him? WATCH OUT here he comes flying through the sky plan your attacka")
//        print("1 use your helmet to block the enemy from messing with your air quality and form a strike back to defeat the enemy")
//        print("2 use the breastplate special ability to absorb attacks coming from multiple people at once and resend them to sender with twice the power behind it ")
//        print("3 use goblet to shoot the enemy out the sky")
//        
//        return makeChoice(totalNumberOfChoices: 3, completionHandler: getUserChoice2)
//    }
//    getUserChoice()
//    LoreText()
//    
//    var value: Int = getUserChoice2()
//    
//    if value == 1 {
//        print("Wrong!!")
//    }
//    else  if value == 2 {
//        print("Wrong")
//    }
//    else if value == 3 {
//        print("Congratulations you go to the next level!!")
//    }
//}
//
//// running story
/////func chapterFour()  {
////    LoreText()
//
//
//
//
//
//
//
//
//
//
//
//
//    
//
//
//
//
//
//
//
//
//
