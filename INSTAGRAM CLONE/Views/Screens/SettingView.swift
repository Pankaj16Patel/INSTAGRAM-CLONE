//
//  SettingView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 27/11/24.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                GroupBox {
                    Divider()
                    HStack(alignment: .center, spacing: 10){
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80,height: 80,alignment: .center)
                            .cornerRadius(12)
                
                        Text("DogGram is #1 app for sharing posting your dog images and sharing it accross the globe. We are a dog loving community and we are happy to have you")
                            .font(.footnote)
                    }.padding()
                } label: {
                    SettingLabelView(labelText: "DogGram", labelimage: "dot.radiowaves.left.and.right")
                }
                
                GroupBox {
                    Divider()
                    NavigationLink {
                        SettingEditTextView(title: "Edit Display Name", discription: "You can edit display name here", placeholder: "display name")
                    } label: {
                        SettingRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.purpleColor)
                    }

                    NavigationLink {
                        SettingEditTextView(title: "Profile Bio", discription: "Your bio is freat place to tell people about yourself. it will be shown on your profile only", placeholder: "enter bio here")
                    } label: {
                        SettingRowView(leftIcon: "text.quote", text: "Bio", color: Color.MyTheme.purpleColor)
                    }

                    NavigationLink {
                        SettingEditImageView(selectedImage: UIImage(named: "dog1")!, title: "PROFILE PICTURTE", discription: "You can edit your profile picture here or choose from image picker", placeholder: "")
                    } label: {
                        SettingRowView(leftIcon: "photo", text: "Display Image", color: Color.MyTheme.purpleColor)
                    }

                       
                  
                        SettingRowView(leftIcon: "figure.walk", text: "Sign Out", color: Color.MyTheme.purpleColor)
                    

                   
                    
                   
                } label: {
                    SettingLabelView(labelText: "DogGram", labelimage: "dot.radiowaves.left.and.right")
                }
                
                GroupBox {
                    Divider()
                    Button {
                        openCustomUrl(urlString: "https://www.google.com")
                    } label: {
                        SettingRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.yellowColor)
                    }
                    
                    Button {
                        openCustomUrl(urlString: "https://www.yahoo.com")
                    } label: {
                        SettingRowView(leftIcon: "folder.fill", text: "Terms & condition", color: Color.MyTheme.yellowColor)
                    }
                    
                    Button {
                        openCustomUrl(urlString: "https://www.google.com")
                    } label: {
                        SettingRowView(leftIcon: "globe", text: "dogGram's website", color: Color.MyTheme.yellowColor)
                    }


                   
                 
                    
                   
                } label: {
                    SettingLabelView(labelText: "Application", labelimage: "apps.iphone")
                }
                
                GroupBox {
                    Text("DogGram was made with love \n all rigts reserved \n pankaj.codes.app \n copyrighted")
                }
                .frame(maxWidth:.infinity)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                 
                


            }
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title3)
            })).accentColor(.gray)
        }
    }
    
    func openCustomUrl(urlString: String){
        guard let url = URL(string: urlString) else {return}
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
