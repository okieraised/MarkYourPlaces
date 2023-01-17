//
//  SideMenuOptionsView.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/12/23.
//

import SwiftUI

struct SideMenuOptionsView: View {
    let viewModel: SideMenuOptionViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.title2)
                .imageScale(.medium)
            
            Text(viewModel.title)
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(Color.theme.primaryTextColor)
    }
}

struct SideMenuOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionsView(viewModel: .trips)
    }
}
