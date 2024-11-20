//
//  BrowseView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView (showsIndicators: false){
          CarouseView()
        }.navigationTitle("Browse")
            .navigationBarTitleDisplayMode(.automatic)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
     
    }
}
