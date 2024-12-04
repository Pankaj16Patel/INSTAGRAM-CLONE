//
//  SignUpView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 02/12/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State var showOnBoarding: Bool = false
   
    
    var body: some View {
        VStack{
            Spacer()
            Image("logo.transparent")
                .resizable()
                .scaledToFill()
                .frame(width: 150,height: 150)
            
            Text("You are not signed in !!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.purpleColor)
            
            Text("Click on the button below to create an account ang join the fun")
                .multilineTextAlignment(.center)
                .fontWeight(.medium)
                .foregroundColor(Color.MyTheme.purpleColor)

            Button {
                showOnBoarding.toggle()
            } label: {
                Text("SignUP / SignIN")
                    .font(.headline)
                    .fontWeight(.medium)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.purpleColor)
                    .foregroundColor(Color.MyTheme.yellowColor)
                    .cornerRadius(15)
                    .padding()
            }
            
          

            
            Spacer()
            Spacer()

        }.padding(.all , 40)
            .background(Color.MyTheme.yellowColor)
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $showOnBoarding) {
                OnboardingView()
            }
            
            
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
