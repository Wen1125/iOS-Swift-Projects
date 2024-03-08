//
//  ContentView.swift
//  H4X0R News
//
//  Created by Wenli Li on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    //observer design pattern
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            NavigationView{
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("H4XoR News")
            }
            .onAppear(perform: {
                self.networkManager.fetchData()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

