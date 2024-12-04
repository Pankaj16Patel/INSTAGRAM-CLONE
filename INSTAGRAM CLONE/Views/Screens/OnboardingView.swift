//
//  OnboardingView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 02/12/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var showOnboardingPart2: Bool = false
    
    var body: some View {
        VStack(spacing: 15){
            Spacer()
            Image("logo.transparent")
                .resizable()
                .scaledToFill()
                .frame(width: 250,height: 250)
            
          
            
            Text("Welcome to DogGram")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.purpleColor)
                 
            Text("Doggram is #1 app for posting picture of your dog and sharing them accross the world. we are dog loving people and happy to have you onboard")
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.MyTheme.purpleColor)
                .fontWeight(.medium)
            
          Spacer()
            
            Button {
                showOnboardingPart2.toggle()
            } label: {
                SignInWithAppleButtonCustom()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .cornerRadius(15)
            }
            
            Button {
                showOnboardingPart2.toggle()
            } label: {
                HStack{
                    Image(systemName: "globe")
                        .font(.title2)
                    Text("Sign in with google")
                        .fontWeight(.medium)
                        .font(.title2)
                }.foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.red)
                    .cornerRadius(15)
            }
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("continue as quest".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.MyTheme.purpleColor)
            }

            Spacer()
        }.padding(.all, 20)
        .background(Color.MyTheme.biegeColor)
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $showOnboardingPart2) {
                OnboardingScreenPart2()
            }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
