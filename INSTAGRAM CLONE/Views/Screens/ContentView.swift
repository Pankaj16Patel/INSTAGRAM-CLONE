//
//  ContentView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var currentUserId:String? = nil
    var body: some View {
        TabView {
            NavigationView{
                FeedView(title: "Feeds", posts: PostArrayObject())
                
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
            NavigationView{
                UploadView()
            }
            .tabItem {
                Image(systemName: "square.and.arrow.up.fill")
                Text("UPLOAD")
            }
            ZStack{
                NavigationView{
                    if currentUserId != nil{
                        ProfileView(profileDisplayName: "user name", profileUserId: "", isMyProfile: true, showSetting: false)
                    }else{
                        SignUpView()
                    }
                    
                }
            }
            
            .tabItem {
                Image(systemName: "person.fill")
                Text("PROFILE")
            }
        }
        .tint(Color.MyTheme.purpleColor)
        .onAppear{
            UITabBar.appearance().backgroundColor = .white
        
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
