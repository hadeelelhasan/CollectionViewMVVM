//
//  TableViewCellRepresentable.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Collection Cell Representable
protocol CollectionCellRepresentable {
    /// View Size
    // var viewSize: CGSize { get set } //cell height

    /// View Resue Identifier
    var reuseIdentifier: String { get set }

}
// it might need size instead of height and width CGSize
