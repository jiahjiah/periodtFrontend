//
//  RegistrationView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI
import Firebase

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        ZStack {
            Image("registrationBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Get Started.")
                        .font(.title)
                        .bold()
                    
                    TextField("Full Name", text: $fullname)
                        .padding(11)
                        .frame(width: 320)
                        .background(Color.gray.opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 10))
                        .disableAutocorrection(true)
                        .autocapitalization(.none)




                    TextField("Email address", text: $email)
                        .padding(11)
                        .frame(width: 320)
                        .background(Color.gray.opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 10))
                        .disableAutocorrection(true)



                    SecureField("Password", text: $password)
                        .padding(11)
                        .frame(width: 320)
                        .background(Color.gray.opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 10))

                    
                    
                    Button {
                        viewModel.register(withEmail: email, password: password, fullname: fullname)
                    } label: {
                        Image("signUpButton")
                    }
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                                .font(.footnote)
                                .foregroundColor(.black)
                            
                            Text("Sign In")
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

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
