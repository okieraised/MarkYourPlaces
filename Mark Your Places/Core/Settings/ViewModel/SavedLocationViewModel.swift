//
//  SavedLocationViewModel.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/17/23.
//

import Foundation


enum SavedLocationViewModel: Int, CaseIterable, Identifiable {
    case home
    case work
    case shopping
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .work:
            return "Work"
        case .shopping:
            return "Shopping"
        }
    }
    
    var imageName: String {
        switch self {
        case .home:
            return "house.circle.fill"
        case .work:
            return "archivebox.circle.fill"
        case .shopping:
            return "cart.circle.fill"
        }
    }
    
    var subtitle: String {
        switch self {
        case .home:
            return "Add Home"
        case .work:
            return "Add Work"
        case .shopping:
            return "Add Shopping"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
