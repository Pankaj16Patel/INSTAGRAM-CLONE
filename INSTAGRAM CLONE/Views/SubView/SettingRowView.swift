//
//  SettingRowView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct SettingRowView: View {
    
    var leftIcon: String
    var text: String
    var color: Color
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 12,style: .continuous)
                    .fill(color)
                
                Image(systemName:leftIcon)
                    .foregroundColor(.white)
                    
            }.frame(width: 36,height: 36,alignment: .center)
            
            Text(text)
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.black)
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(leftIcon:  "heart.fill", text:  "Row title", color: .red)
    }
}
