//
//  ProfileHeaderView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName: String
    
    var body: some View {
        VStack(spacing: 10){
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 160,height: 160)
                .cornerRadius(80)
            
            Text(profileDisplayName)
                .fontWeight(.bold)
                .font(.largeTitle)
            
            Text("this is the area where user can put bio for the profile")
                .foregroundColor(.gray)
                .font(.body)
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 30){
               
                VStack(spacing: 5){
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                    Capsule()
                        .foregroundColor(.gray)
                        .frame(width: 20,height: 2)
                    Text("Posts")
                        .foregroundColor(.gray)
                        .font(.body)
                }
                
                VStack(spacing: 5){
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                    Capsule()
                        .foregroundColor(.gray)
                        .frame(width: 20,height: 2)
                    Text("Posts")
                        .foregroundColor(.gray)
                        .font(.body)
                }
            }
            
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    @State static var name: String = "joe"
    static var previews: some View {
        ProfileHeaderView(profileDisplayName: $name)
    }
}
