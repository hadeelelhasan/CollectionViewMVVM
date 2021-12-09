//
//  ProductHeaderViewRepresentable.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Product Header View Representable
class ProductHeaderViewRepresentable: CollectionHeaderFooterViewRepresentable {
        
    /// ReuseIdentifier
    var reuseIdentifier: String
    
    /// Section Title
    private(set) var title: Type
    
    // view height 
    
    /**
     Default Initialaizer
    */
    init() {
        self.reuseIdentifier = HeaderCollectionView.getReuseIdentifier()
        self.title = .none
    }
    

    /**
     Initializer
     - Parameter title: title of section
     */
    convenience init(title: Type) {
        self.init()
        
        // set Header title
        self.title = title
    }
    
}
