//
//  UserInfoView.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/12/23.
//

import SwiftUI

struct UserInfoView: View {
    
    let image: String
    let fullname: String
    var email: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: 64, height: 64)
        
        VStack(alignment: .leading, spacing: 8) {
            Text(fullname)
                .font(.system(size: 16, weight: .semibold))
            
            Text(email)
                .font(.system(size: 14))
                .accentColor(Color.theme.primaryTextColor)
                .opacity(0.77)
        }
        
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(image: "arrow.left", fullname: "tri pham", email: "tri@gmail.com")
    }
}
