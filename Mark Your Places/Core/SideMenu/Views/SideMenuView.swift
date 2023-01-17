//
//  SideMenuView.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/11/23.
//

import SwiftUI

struct SideMenuView: View {
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack(spacing: 40) {
            // header view
            VStack(alignment: .leading, spacing: 32) {
                // user info
                HStack {
                    UserInfoView(image: "emyeu", fullname: user.fullname, email: user.email)
                }
                
                // driver stuff
                VStack(alignment: .leading, spacing: 16) {
                    Text("Do more with your account")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "dollarsign.square")
                            .font(.title2)
                            .imageScale(.medium)
                        
                        Text("Make money driving")
                            .font(.system(size: 16, weight: .semibold))
                            .padding(6)
                    }
                }
                
                Rectangle()
                    .frame(width: 296, height: 0.75)
                    .opacity(0.7)
                    .foregroundColor(Color(.separator))
                    .shadow(color: .black.opacity(0.7), radius: 4)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
            
            
            // option view
            VStack {
                ForEach(SideMenuOptionViewModel.allCases) { viewModel in
                    NavigationLink(value: viewModel) {
                        SideMenuOptionsView(viewModel: viewModel)
                            .padding()
                    }
                }
            }
            .navigationDestination(for: SideMenuOptionViewModel.self) { viewModel in
                switch viewModel {
                case .trips:
                    Text("Trips")
                case .wallets:
                    Text("Wallets")
                case .settings:
                    SettingView(user: user)
                case .messages:
                    Text("Messages")
                }
            }
            
            Spacer()
            
            
        }
        .padding(.top, 32)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SideMenuView(user: User(fullname: "tri pham", email: "tri@gmail.com", uid: "123456"))
        }
    }
}
