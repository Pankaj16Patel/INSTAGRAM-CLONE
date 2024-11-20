//
//  ContentView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView{
                FeedView(posts: PostArrayObject())
                    
            }.tabItem {
                Image(systemName: "book.fill")
                Text("FEEDS")
           
                }
            NavigationView{
                BrowseView()
            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("BROWSE")
                }
            Text("screen 3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("UPLOAD")
                }
            Text("screen 4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("PROFILE")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
