//
//  LoginView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/20.
//

import SwiftUI

struct LoginView: View {
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("TODO APP")
                    .font(.system(size: 48,weight: .heavy))
                VStack(spacing: 24) {
                    TextField("Mail adress", text: $inputEmail)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                    SecureField("Password", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                }
                .frame(height: 200)
                NavigationLink (destination:HomeView()
                ,label:{
                    Text("Login")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })
                Spacer()
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
        }
    }
}
