//
//  PostArrayModel.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
        
        let post1 = PostModel(postId: "", userId: "", userName: "Entertaiment", caption:"this is a caption",dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postId: "", userId: "", userName: "pubg", caption:nil,dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postId: "", userId: "", userName: "valo", caption:"this is a caption2",dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postId: "", userId: "", userName: "rant", caption:nil,dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
    
    init(post: PostModel) {
        self.dataArray.append(post)
    }
}
