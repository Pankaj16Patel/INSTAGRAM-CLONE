//
//  ProfileView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct ProfileView: View {
    
    var posts = PostArrayObject()
    @State var profileDisplayName: String
    var profileUserId: String
    @State var isMyProfile: Bool
    @State var showSetting: Bool
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            ProfileHeaderView(profileDisplayName: $profileDisplayName)
            Divider()
            
            ImageGridView(posts: posts)
            
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            print("setting")
            showSetting.toggle()
        }, label: {
            Image(systemName: "line.horizontal.3")
                .accentColor(Color.MyTheme.purpleColor)
                .opacity(isMyProfile ? 1.0 : 0.0)
                .sheet(isPresented: $showSetting) {
                    SettingView()
                }
        }))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(profileDisplayName: "joe", profileUserId: "", isMyProfile: true, showSetting: false)
        }
    }
}
