//
//  ProductCollectionViewCell.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import Foundation

/// Product Collection Cell Representable
class ProductCollectionCellRepresentable: CollectionCellRepresentable {
    //var cellHeight: CGSize  //static 
    
    /// Reuse Identifier
    var reuseIdentifier: String
    
    /// Name
    private(set) var name: String
    
    /// Emoji
    private(set) var emoji: String
    
    
    /**
     Default Initiializer
     */
    init() {
        self.reuseIdentifier = ProductCollectionViewCell.getResusIdentifier()
        self.name = String()
        self.emoji = String()
    }
    
    
    
    /** Initializer
    - Parameter product: product as Product
     */
    convenience init(product: Product) {
        self.init()
        
        // Set Product Name
        self.name = product.name
        
        // Set Emoji
        self.emoji = product.emoji
        
    }
    
    
}
