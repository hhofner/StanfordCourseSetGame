//
//  Set.swift
//  StanfordCourseSetGame
//
//  Created by Hans Hofner on 2019/06/17.
//  Copyright © 2019 Hans Hofner. All rights reserved.
//

// MODEL

import Foundation

class Set {
    
    var listOfCards = [Card]()
    var indecesOfSelectedCards = [Int]()
    var indecesOfShownCards = [Int]()
    var indecesOfMatchedCards = [Int]()
    init(startingWith startingCardsCount: Int) {
        for number in Number.allCases {
            for shape in Shape.allCases {
                for color in Color.allCases {
                    for shade in Shading.allCases {
                        listOfCards.append(Card(shape: shape, color: color, shading: shade, number: number))
                    }
                }
            }
        }
        indecesOfSelectedCards = generateListOfDistinctNumbers(count: startingCardsCount, upTo: listOfCards.count)
    }
    
    
    func selectCard(_ indexOfSelectedCard: Int) {
        // Check if card is actually being shown
        if indecesOfShownCards.contains(indexOfSelectedCard) {
            if indecesOfSelectedCards.count == 2 {
                indecesOfSelectedCards.append(indexOfSelectedCard)
            } else if indecesOfSelectedCards.count >= 3 {
                indecesOfSelectedCards.removeAll()
                indecesOfSelectedCards.append(indexOfSelectedCard)
            } else {
                indecesOfSelectedCards.append(indexOfSelectedCard)
            }
        } else {
            print("Card /(index) is not being shown!")
        }
    }
    
    private func generateListOfDistinctNumbers(count numberCount: Int, upTo range: Int) -> [Int] {
        var tempListOfDistinctNumbers = [Int]()
        for _ in 1...numberCount {
            var randomInt: Int
            repeat {
                randomInt = Int.random(in: 0..<range)
            } while indecesOfShownCards.contains(randomInt)
            
            tempListOfDistinctNumbers.append(randomInt)
        }
        return tempListOfDistinctNumbers
    }
}

struct Card {
    
    let shape: Shape
    let color: Color
    let shading: Shading
    let number: Number
}

enum Shape: CaseIterable {
    case triangle, square, circle
}

enum Color: CaseIterable {
    case white, orange, blue
}

enum Shading: CaseIterable {
    case stripped, filled, empty
}

enum Number: Int, CaseIterable {
    case one, two, three
}


