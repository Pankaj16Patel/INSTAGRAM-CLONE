//
//  PostView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    @State var animateLike:Bool = false
    @State var addAnimateToView: Bool
    @State var showActionSheet: Bool = false
    
    var body: some View {
        VStack(alignment: .center,spacing:0){
            //MARK: HEADER
            if showHeaderAndFooter == true {
                HStack{
                    NavigationLink {
                        ProfileView(profileDisplayName: post.userName, profileUserId: post.userId, isMyProfile: false, showSetting:false)
                    } label: {
                        Image("dog1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30,height: 30)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink {
                        ProfileView(profileDisplayName: post.userName, profileUserId: post.userId, isMyProfile: false, showSetting: false)
                    } label: {
                        
                        Text(post.userName)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                    }
                    
                    
                    
                    Spacer()
                    Button {
                        print()
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                    }.actionSheet(isPresented: $showActionSheet) {
                        return ActionSheet(title: Text( "What would you like to do?"), buttons: [
                            .destructive(Text("Report") , action: {
                                <#code#>
                            })
                        ])
                    }

                
                }.padding(.all , 6)
            }
            
            
            //MARK: IMAGE
            ZStack{
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                if addAnimateToView {
                    LikeAnimationView(animate: $animateLike)
                    
                }
                   
                
              
                
            }
            
            
            //MARK: FOOTER
            if showHeaderAndFooter == true {
                HStack(alignment: .center, spacing: 10){
                    Button {
                        if post.likedByUser {
                            //unlike the post
                            unlikePost()
                        } else{
                            //like the post
                            likePost()
                        }
                    } label: {
                        Image(systemName: post.likedByUser ? "heart.fill": "heart" )
                            .font(.title3)
                    }
                    .foregroundColor(post.likedByUser ? .red : .gray)

                    
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
                if let caption = post.caption {
                    HStack{
                        Text(caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding(.all, 6)
                }
            }
        }
    }
    
    func  likePost(){
        
        let updatedPost = PostModel(postId: post.postId, userId: post.userId, userName: post.userName,caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount-1, likedByUser: true)
        self.post = updatedPost
        animateLike = true
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            animateLike = false
        }
    }
    
    func  unlikePost(){
        
        let updatedPost = PostModel(postId: post.postId, userId: post.userId, userName: post.userName,caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount+1, likedByUser: false)
        
        self.post = updatedPost
    }
    
    /*func likePost(){
        
        let updatedPost = PostModel( postID: post.postID, userID: post.userID, userName: post.userName, dateCreated: post.dateCreated, likeCount: post.likeCount + 1, likeByUser: true)
        self.post = updatedPost
        animateLike = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            animateLike = false
        }
        
    }
    
    func unlikePost(){
        
        let updatedPost = PostModel( postID: post.postID, userID: post.userID, userName: post.userName, dateCreated: post.dateCreated, likeCount: post.likeCount - 1, likeByUser: false)
        self.post = updatedPost
    }
  func likePost(){
        
        var likedValue = post.likedByUser
        var likedCount = post.likeCount

        self.post.likedByUser = !likedValue
        self.post.likeCount = likedCount + 1
      post.likedByUser = true
        animateLike = true

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            animateLike = false
            
        }
    }
    func unlikePost(){
        
        var likedValue = post.likedByUser
        var likedCount = post.likeCount

        self.post.likedByUser = !likedValue
        self.post.likeCount = likedCount - 1

    }*/
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postId: "", userId: "", userName: "Entertainment", caption: "i am beautiful" ,dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true, addAnimateToView: true)
    }
}
