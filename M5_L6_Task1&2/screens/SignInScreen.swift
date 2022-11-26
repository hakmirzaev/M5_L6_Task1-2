//
//  SignInScreen.swift
//  M5_L6_Task1&2
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

struct SignInScreen: View {
    @State var isModel = false
    @State var userID = ""
    @State var userPW = ""
    var body: some View {
        VStack{
            Spacer()
            Image("person").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .background(Color.white)
            TextField("User ID", text: $userID).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            SecureField("User PW", text: $userPW).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            Button(action: {
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(.white)
                    Spacer()
                }
            }).frame(height: 45)
                .background(Color.red)
                .cornerRadius(30)
            Spacer()
            HStack{
                Text("Don't have an account?").foregroundColor(.blue)
                Button(action: {
                    isModel = true
                }, label: {
                    Text("Sign Up").font(.system(size: 18))
                }).sheet(isPresented: $isModel, content: {
                    SignUpScreen()
                })
            }
        }.padding()
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
