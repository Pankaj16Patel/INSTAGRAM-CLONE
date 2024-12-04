//
//  OnboardingScreenPart2.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 02/12/24.
//

import SwiftUI

struct OnboardingScreenPart2: View {
    
    @State var displayName: String = ""
    @State var showImagePicker: Bool = false
    @State var imageSelected: UIImage = UIImage(named: "logo")!
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            Spacer()
            
            Text("Whats your name ?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.yellowColor)
            
            TextField("enter your name here", text: $displayName)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.MyTheme.biegeColor)
                .cornerRadius(12)
                .padding()
            
            
            Button {
                showImagePicker.toggle()
            } label: {
                Text("Finish: Add profile picture")
                    .font(.headline)
                    .foregroundColor(Color.MyTheme.purpleColor)
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.MyTheme.yellowColor)
                    .cornerRadius( 12)
                    .padding()
                
            }
            .opacity(displayName != "" ? 1.0:0.0)
            Spacer()
        }.background(Color.MyTheme.purpleColor)
            .sheet(isPresented: $showImagePicker,onDismiss:createProfile) {
                ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
            }
        
        
    }
    func createProfile(){
        print("create profile")
    }
}

struct OnboardingScreenPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenPart2()
    }
}
