//
//  User.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Type Enum
enum Type: String {
    case vegetable
    case fruit
    case dessert
    case none
}


/// Product Entity
struct Product {
    
    /// Product  Name
    var name: String
    
    /// Product Emoji
    var emoji: String
    
    /// product Type
    var type: Type
}

