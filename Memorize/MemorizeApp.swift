//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Alp Üney on 14.11.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
