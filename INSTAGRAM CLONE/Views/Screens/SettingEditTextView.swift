//
//  SettingEditTextView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct SettingEditTextView: View {
    @State var submissionText: String = ""
    @State var title: String
    @State var discription: String
    @State var placeholder: String
    var body: some View {
        VStack{
            Text(discription)
            
            TextField(placeholder, text: $submissionText)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.MyTheme.biegeColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            Button {
                print("0")
            } label: {
                Text("save")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.MyTheme.yellowColor)
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.MyTheme.purpleColor)
                    .cornerRadius(12)
            }

            Spacer()
        }.padding(.all)
        .navigationBarTitle(title)
    }
}

struct SettingEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SettingEditTextView(title: "test title", discription: "sample discriptin", placeholder: "sample" )
        }
     
    }
}
