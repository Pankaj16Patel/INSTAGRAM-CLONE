//
//  CommentModel.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import Foundation

struct CommentModel: Identifiable ,Hashable {
    
    var id = UUID()
    var commentId: String
    var userId: String
    var userName: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
