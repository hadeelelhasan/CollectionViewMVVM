//
//  CollectionSectionRepresentable.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Collection Section Representable
class CollectionSectionRepresentable {
    
    /// Sectoin Header Representable
    var sectionHeaderRepresentable: CollectionHeaderFooterViewRepresentable?
    
    /// Cells Representable
    var cellsRepresentables: [CollectionCellRepresentable]
    
    
    /**
     Default Initializer
    */
    init() {
        self.sectionHeaderRepresentable = nil
        self.cellsRepresentables = []
    }
}
 
