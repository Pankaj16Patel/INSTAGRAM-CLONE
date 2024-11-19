//
//  PostView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .center,spacing:0){
            //MARK: HEADER
            HStack{
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30,height: 30)
                    .cornerRadius(15)
                
                Text("user name here")
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
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            }
            .padding(.all ,6)
            .foregroundColor(.gray)
           
            HStack{
                Text("this is the cation for the photo")
                    .foregroundColor(.gray)
                Spacer()
            }.padding(.all, 6)
           
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
