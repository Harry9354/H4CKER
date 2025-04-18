//
//  ContentView.swift
//  H4CKER News
//
//  Created by Hariom Kumar on 09/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4CKER News")
        }
        .onAppear {
            self.networkManager.FetchData()
        }
    }
}

#Preview {
    ContentView()
}



//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hey"),
//    Post(id: "3", title: "Hii")
//]
