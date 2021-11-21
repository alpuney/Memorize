//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alp Üney on 18.11.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static var emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚌", "🚙", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚞", "🚝", "🚄", "🚅", "🚈", "🚤", "🛥", "🛳"]
    
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
