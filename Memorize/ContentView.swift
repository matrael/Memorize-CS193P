//
//  ContentView.swift
//  Memorize
//
//  Created by Jason Ricketts on 2021-5-20.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🛳", "🚀", "🚝", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🛺", "🚍", "🚘", "🚂", "🚁", "🛶", "⛴", "🚢", "🛸", "🛩", "🚗"]
    var emojiCount = 5
    
    var body: some View {
        VStack {
        HStack {
            ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3.0)
                Text(content)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            } else {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
