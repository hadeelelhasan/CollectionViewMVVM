//
//  TableHeaderFooterViewRepresentable.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Collection Header Footer View Representable
protocol CollectionHeaderFooterViewRepresentable {
    
    /// View Height
    //var cellSize: CGSize { get set } // height 
    
    /// View Resue Identifier
    var reuseIdentifier: String { get set }

}
