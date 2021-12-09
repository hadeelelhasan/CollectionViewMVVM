//
//  ProductCollectionViewCell.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Product Collection View Cell
class ProductCollectionViewCell: UICollectionViewCell {
    
    /// Emoji Label
    @IBOutlet private weak var emojiLabel: UILabel!
    
    /// Name Label
    @IBOutlet private weak var nameLabel: UILabel!
    
    
    
    /**
      Setup Cell
    - Parameter representale: Cell Representable as ProductCollectionCellRepresentable
    */
    func setup(representale: ProductCollectionCellRepresentable) {
        
        // Set Name Label
        self.nameLabel.text = representale.name
        
        // Set Emoji Label
        self.emojiLabel.text = representale.emoji
    }
    
    
    /**
     Get Reuse Identifier
    - Returns: Identifier as String
    */
    class func getResusIdentifier() -> String {
        return "ProductCollectionViewCell"
    }
    
//    class func getSize() -> CGSize {
//        return
//    }
}
