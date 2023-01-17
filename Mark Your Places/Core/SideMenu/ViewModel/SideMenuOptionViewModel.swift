//
//  SideMenuOptionViewModel.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/12/23.
//

import Foundation

enum SideMenuOptionViewModel: Int, CaseIterable, Identifiable {
    case trips
    case wallets
    case settings
    case messages
    
    var title: String {
        switch self {
        case .trips:
            return "Your Trips"
        case .wallets:
            return "Wallet"
        case .settings:
            return "Settings"
        case .messages:
            return "Messages"
        }
    }
    
    var imageName: String {
        switch self {
        case .trips:
            return "list.bullet.rectangle"
        case .wallets:
            return "creditcard"
        case .settings:
            return "gear"
        case .messages:
            return "bubble.left"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
