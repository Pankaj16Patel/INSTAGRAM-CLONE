//
//  PostView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    var body: some View {
        VStack(alignment: .center,spacing:0){
            //MARK: HEADER
            HStack{
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30,height: 30)
                    .cornerRadius(15)
                
                Text(post.userName)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
            }.padding(.all , 6)
          
            //MARK: IMAGE
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: FOOTER
            HStack(alignment: .center, spacing: 10){
                Image(systemName: "heart")
                    .font(.title3)
                
                //MARK: COMMENT NAVIGATION
                NavigationLink {
                    CommentView()
                } label: {
                    Image(systemName: "bubble.middle.bottom")
                        .font(.title3)
                        .foregroundColor(.gray)
                }

               
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            }
            .padding(.all ,6)
            .foregroundColor(.gray)
            if let caption = post.caption{
                HStack{
                    Text(caption)
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.all, 6)
            }
            
           
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postId: "", userId: "", userName: "Entertainment", caption: "i am beautiful" ,dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post)
    }
}
