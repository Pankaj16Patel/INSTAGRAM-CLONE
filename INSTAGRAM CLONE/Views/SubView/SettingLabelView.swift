//
//  SettingLabelView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText: String
    var labelimage: String
    
    var body: some View {
        HStack{
            Text(labelText)
            Spacer()
            Image(systemName: labelimage)
        }.padding()
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "testlabel", labelimage: "heart")
    }
}
