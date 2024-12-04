//
//  FeedView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct FeedView: View {
    
    var title:String
    
    @ObservedObject var posts:  PostArrayObject
    
    var body: some View {
        
            ScrollView(.vertical , showsIndicators: false) {
                LazyVStack{
                        ForEach(posts.dataArray , id:\.self){ posts in
                            PostView(post: posts, showHeaderAndFooter: true, addAnimateToView: true)
                        }
                }
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.automatic)
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(title: "Feeds", posts: PostArrayObject())
        }
       
    }
}
