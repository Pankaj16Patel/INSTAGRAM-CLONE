//
//  PostModel.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import Foundation
struct PostModel: Identifiable, Hashable {
    
    var id = UUID()
    var postId: String
    var userId: String
    var userName: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
   
}
