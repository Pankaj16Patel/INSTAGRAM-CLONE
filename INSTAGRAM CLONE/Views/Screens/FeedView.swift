//
//  FeedView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 19/11/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            PostView()
            PostView()
            PostView()
            PostView()
        }.navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }
       
    }
}
