//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Максим Французов on 13.07.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚂", "🚀", "🚁", "🚜", "🚘", "🚅", "🛵", "🚠", "🚡", "⛵️", "🚤", "🛥", "🛳", "🛸", "🚦", "🚥", "🚨", "✈️"]
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numbersOfPairsOfCards: 5) { pairIndex in
            emojis[pairIndex]
        }
    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    
    // MARK: - Intenrt(s)
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
