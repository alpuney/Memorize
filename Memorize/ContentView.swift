//
//  ContentView.swift
//  Memorize
//
//  Created by Alp Üney on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚌", "🚙", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚞", "🚝", "🚄", "🚅", "🚈", "🚤", "🛥", "🛳"]
    @State var emojiLowerIndex = 0
    @State var emojiHigherIndex = 7
    
    var body: some View {
        VStack {
            ScrollView {
                Text("MEMORIZE!")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[emojiLowerIndex...emojiHigherIndex].shuffled(), id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            HStack {
                Spacer()
                xboxButton
                Spacer()
                playstationButton
                Spacer()
                controllerButton
                Spacer()
            }
            .padding(.horizontal)
            .font(.largeTitle)
            .foregroundColor(Color.blue)
        }
        .padding(.horizontal)
        .foregroundColor(Color.red)
    }
    
// Xbox Button
    
    var xboxButton: some View {
        Button {
            if emojiLowerIndex != 0 && emojiHigherIndex != 7 {
                emojiLowerIndex = 0
                emojiHigherIndex = 7
            }
        } label: {
            VStack {
                Image(systemName: "logo.xbox")
                Text("Xbox")
                    .font(.caption)
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    var playstationButton: some View {
        Button {
            if emojiLowerIndex != 8 && emojiHigherIndex != 15 {
                emojiLowerIndex = 8
                emojiHigherIndex = 15
            }
        } label: {
            VStack {
                Image(systemName: "logo.playstation")
                Text("Playstation")
                    .font(.caption)
            }
            .multilineTextAlignment(.center)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    var controllerButton: some View {
        Button {
            if emojiLowerIndex != 16 && emojiHigherIndex != 23 {
                emojiLowerIndex = 16
                emojiHigherIndex = 23
            }
        } label: {
            VStack {
                Image(systemName: "gamecontroller")
                Text("Controller")
                    .font(.caption)
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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
.previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.light)
    }
}
