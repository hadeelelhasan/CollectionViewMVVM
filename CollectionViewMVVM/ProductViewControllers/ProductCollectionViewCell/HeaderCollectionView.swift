//
//  HeaderCollectionView.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Header Collectio View
class HeaderCollectionView: UICollectionReusableView {
    
    /// Title Label
    @IBOutlet private weak var titleLabel: UILabel!
    
    
    
    /** Setup Header
     - Parameter representable: Header Representable
    */
    func setup(representable: ProductHeaderViewRepresentable) {
        
        // Set Title Label
        self.titleLabel.text = representable.title.rawValue
    }
    
    
    /** Get Reuse Identifier
    - Returns: Reuse Identifier as String
    */
    class func getReuseIdentifier() -> String {
        return "HeaderCollectionView"
    }
}
