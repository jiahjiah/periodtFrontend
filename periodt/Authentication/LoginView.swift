//
//  LoginView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Image("authBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Welcome back.")
                        .font(.title)
                        .bold()
                    
                    TextField("Email address", text: $email)
                        .padding(11)
                        .frame(width: 320)
                        .background(Color.gray.opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 10))

                    SecureField("Password", text: $password)
                        .padding(11)
                        .frame(width: 320)
                        .background(Color.gray.opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 10))

                    Button {
                        viewModel.login(withEmail: email, password: password)
                    } label: {
                        Image("signInButton")
                    }
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarHidden(true)
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.footnote)
                                .foregroundColor(.black)
                            
                            Text("Sign Up")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)

                        }
                    }
                }
                .padding(20)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(.white)
                .cornerRadius(30)
                
            }
            .padding(.bottom, 100)
            
        }
        .navigationBarHidden(true)
        .statusBar(hidden: true)

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
