//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Wenli Li on 3/6/24.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
    @State var rightDiceView = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceView)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceView = Int.random(in: 1...6)
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }).background(Color.red)
                    .padding()
            }
        }

    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
