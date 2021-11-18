//
//  ContentView.swift
//  Memorize
//
//  Created by Alp Üney on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚌", "🚙", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚞", "🚝", "🚄", "🚅", "🚈", "🚤", "🛥", "🛳"]
    @State var emojiCount = 20
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(Color.red)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape.fill().foregroundColor(Color.white)
                shape.strokeBorder(lineWidth: 3.0)
                Text(content).font(Font.largeTitle)
            } else {
                shape.fill()
            }
        } .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
