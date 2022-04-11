//
//  ContentView.swift
//  HackerNews
//
//  Created by Marco Mascorro on 4/10/22.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @ObservedObject var posts = NetworkManger()
    var body: some View {
        NavigationView {
            List(posts.post){post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
               
            }
        }
        .onAppear {
            self.posts.fetchData()
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
