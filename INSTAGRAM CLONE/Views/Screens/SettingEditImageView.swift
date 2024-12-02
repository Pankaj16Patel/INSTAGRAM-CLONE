//
//  SettingEditImageView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 28/11/24.
//

import SwiftUI

struct SettingEditImageView: View {
    
    @State var selectedImage: UIImage
    @State var title: String
    @State var discription: String
    @State var placeholder: String
    @State var sourceType: UIImagePickerController.SourceType = UIImagePickerController.SourceType.photoLibrary
    @State var showImagePicker: Bool = false
    
    var body: some View {
        VStack(alignment: .leading,spacing: 20 ){
            Text(discription)
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 200,height: 200, alignment: .center)
                .cornerRadius(20)
            
            Button {
                showImagePicker.toggle()
            } label: {
                Text("IMPORT")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.MyTheme.purpleColor)
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.MyTheme.yellowColor)
                    .cornerRadius(12)
            }.sheet(isPresented: $showImagePicker) {
                ImagePicker(imageSelected: $selectedImage, sourceType: $sourceType)
            }
            
            Button {
                print("0")
            } label: {
                Text("SAVE")
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


struct SettingEditImageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SettingEditImageView(selectedImage: UIImage(named: "dog1")!, title: "title", discription: "test", placeholder: "fffff")
        }
      
    }
}
