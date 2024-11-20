//
//  FeedView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts:PostArrayObject
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            LazyVStack{
                ForEach(posts.dataArray , id:\.self){ posts in
                    PostView(post: posts)
            }
            
                
            }
        }.navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject())
        }
       
    }
}
