//
//  SettingView.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/12/23.
//

import SwiftUI

struct SettingView: View {
    private let user: User
    @EnvironmentObject var viewModel: AuthViewModel
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack {
            List {
                Section {
                    HStack {
                        UserInfoView(image: "emyeu", fullname: user.fullname, email: user.email)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .padding(8)
                }
                
                Section("Favorites") {
                    ForEach(SavedLocationViewModel.allCases) { viewModel in
                        NavigationLink {
                            SavedLocationSearchView()
                        } label: {
                            SavedLocationRowView(viewModel: viewModel)
                        }

                    }
                }
                
                Section("Settings") {
                    SettingsRowView(imageName: "bell.circle.fill", title: "Notifications", tintColor: Color(.systemPurple))
                }
                
                Section("Account") {
                    SettingsRowView(imageName: "arrow.left.square.fill", title: "Sign Out", tintColor: Color(.systemRed))
                        .onTapGesture {
                            viewModel.signout()
                        }
                    
                }
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingView(user: User(fullname: "tri pham", email: "tri@gmail.com", uid: "123456"))
        }
    }
}
