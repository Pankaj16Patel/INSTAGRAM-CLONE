//
//  SignInWithAppleButtonCustom.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 02/12/24.
//

import Foundation
import SwiftUI
import AuthenticationServices
    
struct SignInWithAppleButtonCustom: UIViewRepresentable{
    
    func makeUIView(context: Context) ->  ASAuthorizationAppleIDButton{
        return  ASAuthorizationAppleIDButton(authorizationButtonType: .default, authorizationButtonStyle: .black)
    }
    
    func updateUIView(_ uiView:  ASAuthorizationAppleIDButton, context: Context) {}
}
