//
//  ContentView.swift
//  WendyCard
//
//  Created by Wenli Li on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("wendy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 22))
                Text("Wendy Li")
                    .font(Font.custom("MadimiOne-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("software developer")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Divider()
                InfoView(text: "+ 1 801 326 XXXX", imageName: "phone.fill")
                InfoView(text: "wendyxxxx@gmail.com", imageName: "envelope.fill")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(imageName)
            })
    }
}
