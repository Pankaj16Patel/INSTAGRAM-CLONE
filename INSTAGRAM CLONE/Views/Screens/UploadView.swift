//
//  UploadView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 21/11/24.
//

import SwiftUI

struct UploadView: View {
    
    @State var showImagePicker: Bool = false
    @State var imageSelected: UIImage = UIImage(named: "logo")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        ZStack{
            VStack{
                Button {
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                } label: {
                    Text("UPLOAD")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.purpleColor)
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                        .background(Color.MyTheme.yellowColor)
                }

                Button {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                } label: {
                    Text("IMPORT PHOTO")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yellowColor)
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                        .background(Color.MyTheme.purpleColor)
                }

            }.sheet(isPresented: $showImagePicker ){
                ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
            }
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height: 300,alignment: .center)
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
