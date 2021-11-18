//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alp Üney on 18.11.2021.
//

import SwiftUI

class EmojiMemoryGame {
    static var emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚌", "🚙", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚞", "🚝", "🚄", "🚅", "🚈", "🚤", "🛥", "🛳"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
