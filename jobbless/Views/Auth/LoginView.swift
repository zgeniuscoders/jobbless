//
//  LoginView.swift
//  jobbless
//
//  Created by ZGenius on 24/05/2024.
//

import SwiftUI

struct LoginView: View {
   @State private var email = ""
   @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 10){
                Text("Login").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Welcome back sign in to your account to get more information about your job drean").font(.callout)
                
                CustomTextFieldView(placeholder: Text("Enter your email"), text: $email)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your password",text: $password)
                    .modifier(TextFieldModifier())
                
                Button{
                    
                } label: {
                    Text("Login").fontWeight(.semibold)
                }.padding()
                    .frame(width: 360)
                    .background(.black)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Spacer()
                
                Divider()
                NavigationLink{
                    RegisterView().navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3){
                        Spacer()
                        Text("You don't have an account? Sign up")
                        Text("here").foregroundStyle(.blue)
                        Spacer()
                    }.font(.footnote).foregroundStyle(.black)
                }
                
            }.padding().background(Color("main"))
        }
    }
}

#Preview {
    LoginView()
}
