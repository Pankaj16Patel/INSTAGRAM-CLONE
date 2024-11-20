//
//  CommentView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import SwiftUI

struct CommentView: View {
    
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack{
            ScrollView(){
                LazyVStack{
                    ForEach(commentArray , id: \.self) { comment in
                     MessageView(comment: comment)
                    }
                }
               
            }
            HStack{
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40 ,alignment: .center)
                    .cornerRadius(20)
                
                TextField("type your comment here...", text: $submissionText)
                
                Button {
                    print("comment")
                } label: {
                    Image(systemName: "paperplane")
                        .font(.title2)
                }.accentColor(Color.MyTheme.purpleColor)

                
            }.padding(.all , 6)
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(){
            getComments()
        }
    }
    func getComments(){
        
        let comment1 = CommentModel(commentId: "", userId: "", userName: "joe", content: "comment no 1", dateCreated: Date())
        let comment2 = CommentModel(commentId: "", userId: "", userName: "joe", content: "comment no 2", dateCreated: Date())
        let comment3 = CommentModel(commentId: "", userId: "", userName: "joe", content: "comment no 3", dateCreated: Date())
        let comment4 = CommentModel(commentId: "", userId: "", userName: "joe", content: "comment no 4", dateCreated: Date())
        let comment5 = CommentModel(commentId: "", userId: "", userName: "joe", content: "comment no 5", dateCreated: Date())
        
        commentArray.append(comment1)
        commentArray.append(comment2)
        commentArray.append(comment3)
        commentArray.append(comment4)
        commentArray.append(comment5)
    }
}


struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CommentView()
        }
      
    }
}
