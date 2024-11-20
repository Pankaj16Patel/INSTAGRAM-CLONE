//
//  ImageGridView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 21/11/24.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]) {
            ForEach(posts.dataArray, id: \.self){ post in
                NavigationLink {
                    FeedView(title: "Posts" ,posts: PostArrayObject(post: post))
               } label: {
                    PostView(post: post, showHeaderAndFooter: false)
                }

              
            }
        }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
    }
}
