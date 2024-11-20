//
//  MessageView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import SwiftUI

struct MessageView: View {
     
    @State var comment: CommentModel
    
    var body: some View {
        HStack{
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40,height: 40,alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4){
                Text(comment.userName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(comment.content)
                    .padding(.all ,10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(12)
            }
            Spacer()
        }.padding(.all, 6)
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comments: CommentModel = CommentModel(  commentId: "", userId: "", userName: "jowe", content: "this is the comment", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comments)
    }
}
