//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alp Γney on 18.11.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static var emojis = ["π", "π", "π", "π", "π", "π", "π", "π", "π", "π", "π", "π", "π", "π»", "π", "π", "π", "π", "π", "π", "π", "π€", "π₯", "π³"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
