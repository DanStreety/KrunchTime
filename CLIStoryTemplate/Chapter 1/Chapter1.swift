import Foundation

// Define an enum for weapon choices
enum WeaponChoice {
    case staff
    case sword
}

// Define a struct for the game character
struct Character {
    var HP: Int
    var Attack: Int
}

// Define a struct for the boss character
struct BossCharacter {
    var HP: Int
    var Attack: Int
    var Defense: Int
    var Focus: Int
}

// Function for the boss fight
func bossFight(user: inout Character, boss: inout BossCharacter) {
    print("You've reached the lair of Terra, Mother of Mountains. Prepare for the battle!")

    let bossAttackOptions = ["Attack", "Defend", "Focus"]

    while user.HP > 0 && boss.HP > 0 {
        // User's turn
        print("Your turn. Choose an action: (1) Attack, (2) Defend, (3) Focus")
        if let userChoice = readLine(), let userAction = Int(userChoice) {
            switch userAction {
            case 1:
                let userDamage = user.Attack
                print("-----------------------------------------------------------")
                print("You attack Terra for \(userDamage) damage!")
                print("-----------------------------------------------------------")
                boss.HP -= userDamage
            case 2:
                let userDefense = Int.random(in: 1...30)
                print("-----------------------------------------------------------")
                print("You defend and reduce the next attack by \(userDefense) damage.")
                print("-----------------------------------------------------------")
                // Implement logic to reduce boss's damage in the next turn
                boss.Defense = userDefense
            case 3:
                let userFocus = Int.random(in: 5...25)
                print("-----------------------------------------------------------")
                print("You focus and increase your next attack by \(userFocus) damage.")
                print("-----------------------------------------------------------")
                // Implement logic to increase user's damage in the next turn
                user.Attack += userFocus
            default:
                print("Invalid choice. Please choose (1) Attack, (2) Defend, or (3) Focus.")
            }
        }

        // Boss's turn (May need balancing. Working currently as intended)
        let bossChoice = bossAttackOptions.randomElement()!

        if bossChoice == "Attack" {
            let bossDamage = boss.Attack
            print("Terra chooses to Attack and deals \(bossDamage) damage to you!")
            print("-----------------------------------------------------------")
            // Reduce the damage based on boss's defense
            let reducedBossDamage = max(bossDamage - boss.Defense, 0)
            user.HP -= reducedBossDamage
        } else if bossChoice == "Defend" {
            let bossDefense = Int.random(in: 1...10)
            print("Terra chooses to Defend, reducing the damage from your next attack by \(bossDefense).")
            print("-----------------------------------------------------------")
            // Set the boss's defense value for the next turn
            boss.Defense = bossDefense
        } else if bossChoice == "Focus" {
            let bossFocus = Int.random(in: 5...15)
            print("Terra chooses to Focus, increasing her next attack by \(bossFocus).")
            print("-----------------------------------------------------------")
            // Increase the boss's attack value for the next turn
            boss.Attack += bossFocus
        }

        // Display current HP
        print("Your HP: \(user.HP), Terra's HP: \(boss.HP)")
    }

    // Check the result of the battle
    if user.HP <= 0 {
        print("You were defeated by Terra. The land remains in darkness. It seems that you were not the legendary hero. The book returns to the shelf waiting for a new hero.")
        // Implement game over logic here
    } else {
        print("You defeated Terra, Mother of Mountains! The land begins to heal.")
        print("Without even a moment to think, you notice your body disappearing, presumably into another part of Harmonia. As your body begins to be ripped through time and space, you manage to grab a helmet from the Mother of Mountains in the confusion. It seems like your journey continues...")
        print("-----------------------------------------------------------")
        // Continue the story here via chapter 2? (Later)
    }
}

// Function to handle a single quest
func handleQuest(user: inout Character, quest: String) {
    // Print the quest lore
    print("Quest:")
    print(quest)

    let gainAttack = Int.random(in: 1...5)
    let loseAttack = Int.random(in: 1...5)
    let gainHP = Int.random(in: 5...10)
    let loseHP = Int.random(in: 5...10)

    let randomOutcome = Bool.random()
    if randomOutcome {
        print("You offer your assistance, and the spirits bless you with newfound strength. Your Attack has increased by \(gainAttack) and the land shows signs of healing.")
        print("-----------------------------------------------------------")
        user.Attack += gainAttack
        user.HP += gainHP
    } else {
        print("Your presence irritates the spirits, and they sap some of your strength. You lose \(loseAttack) Attack, and the land remains desolate.")
        print("-----------------------------------------------------------")
        user.Attack -= loseAttack
        user.HP -= loseHP
    }

    print("Your Attack is now: \(user.Attack)")
    print("Your HP is now: \(user.HP)")
}

// Function for Chapter One (Needed above all else)
func chapterOne() {
    // Character Stats (May balance later?)
    var user = Character(HP: 100, Attack: 10)
    var boss = BossCharacter(HP: 120, Attack: 20, Defense: 0, Focus: 0)

    // Opening Lore
    print("Welcome to the world of Harmonia. The voice you hear is of mine. I have no name, so you may simply call me Sage.")
    print("I've watched you. In the real world, you were an ordinary person, but fate had different plans for you. I know you've picked up the book from the library and got transported to this world. Ages ago, I sent the book into your realm in hopes that a true hero would save our world. I'll tell you how this story started...")
    print("-----------------------------------------------------------")
    print("Long ago, the four powerful elementals - Terra, Zora, Scorn, and Zephyr - brought chaos to Harmonia. Each harboring their own form of chaos with their titles. Terra, Mother of Mountains. Zora, Sovereign of the Tide. Scorn, Flame of Destruction. Zephyr, Ruler of the Sky.")
    print("They unleashed their destructive powers, and the world fell into darkness. However, this was not always the case. Long ago, a legendary hero from your land quelled the rage of these elementals. We thought for good...But that was not the case. Could it be you?")
    print("-----------------------------------------------------------")

    // User and Hero's Role
    var userBelievesTheyAreHero = false
    repeat {
        print("Do you believe you are the legendary hero destined to restore Harmonia? (Yes/No)")
        if let userResponse = readLine() {
            let lowercasedResponse = userResponse.lowercased()
            if lowercasedResponse == "yes" {
                userBelievesTheyAreHero = true
                print("You have accepted your destiny as the legendary hero. Your quest begins now. I will show you where our first journey awaits.")
                print("-----------------------------------------------------------")
            } else if lowercasedResponse == "no" {
                // You thought you had a choice? lol
                print("You may not believe it, but completing this quest is the only way to return home.")
                print("-----------------------------------------------------------")
            } else {
                print("Invalid response. Please type 'Yes' or 'No'.")
            }
        }
    } while !userBelievesTheyAreHero

    // Weapon Choice Lore
    var weaponChoice: WeaponChoice? = nil
    repeat {
        print("Now, you must choose your weapon. Will you wield the Staff or the Sword?")
        if let input = readLine()?.lowercased() {
            if input == "staff" {
                print("The Staff is a powerful weapon that grants you 5 Attack. It can harness the elements and is your best choice for this quest.")
                print("-----------------------------------------------------------")
                user.Attack += 5
                weaponChoice = .staff
            } else if input == "sword" {
                print("The Sword is a reliable choice that grants you 3 Attack.")
                print("-----------------------------------------------------------")
                user.Attack += 3
                weaponChoice = .sword
            } else {
                print("Invalid weapon choice. Please type 'Staff' or 'Sword'.")
            }
        }
    } while weaponChoice == nil

    // Quest Lore Arrays with 11 quest descriptions (May need less?)
    let questLore = [
        "As you journey deeper into the damaged fields, you encounter a group of spirits seeking to restore the land's vitality.",
        "While exploring the corrupted forest, you find a hidden spring. Its pure waters rejuvenate you.",
        "In the damaged village, you help rebuild the homes of its inhabitants.",
        "You venture into the mystical caverns, discovering ancient relics of great power.",
        "Nearing a cliffside, you encounter a group of nomads. They offer to share their wisdom with you.",
        "Exploring a long-forgotten library, you uncover lost knowledge of the elementals.",
        "Journeying through the vast desert, you encounter a sandstorm and must find shelter.",
        "You delve into the underground catacombs, where you face the spirits of fallen warriors.",
        "Nearing a majestic waterfall, you encounter a guardian spirit that tests your resolve.",
        "Exploring a forgotten temple, you decipher ancient runes and gain insight into the elemental chaos.",
        "Exploring the haunted mansion, you encounter restless spirits with unresolved issues."
    ]

    // Shuffle the questLore array
    var shuffledQuestLore = questLore.shuffled()

    // Select the first 3 quests from the shuffled array
    var selectedQuests: [String] = []
    for _ in 0..<3 {
        if let quest = shuffledQuestLore.popLast() {
            selectedQuests.append(quest)
        }
    }

    // Present quest lore, then ask for user's direction
    for (index, quest) in selectedQuests.enumerated() {
        print("Quest \(index + 1):")
        handleQuest(user: &user, quest: quest)

        var userDirection: String?
        repeat {
            print("Choose a direction: Left or Right")
            if let userResponse = readLine() {
                let lowercasedResponse = userResponse.lowercased()
                if lowercasedResponse == "left" || lowercasedResponse == "right" {
                    userDirection = lowercasedResponse.capitalized
                } else {
                    print("Invalid choice. Please choose 'Left' or 'Right'.")
                }
            }
        } while userDirection == nil

        print("You chose: \(userDirection ?? "No choice made")")

        // Continue with the game logic based on the user's choice
    }

    // Print lore before the boss fight
    print("As you complete the last quest, you feel a powerful presence nearby. Terra, the Mother of Mountains, teleports you to her domain.")
    print("-----------------------------------------------------------")

    // Boss Fight
    bossFight(user: &user, boss: &boss)
}

// Uncomment the to start the game?
// chapterOne()

