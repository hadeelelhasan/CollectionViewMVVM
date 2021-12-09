//
//  ProductViewModel.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

/// Product View Model
class ProductViewModel {
    
    /// Section Representables
    var sectionRepresentables: [CollectionSectionRepresentable]
    
    // var products: [Proudct]
    
    /// Product In Sections
    var productsInSections: [Type: [Product]] // type: Id as Int
    
    
    
    /**
     Initializer
     - Parameter products: Array of Product instance
    */
    init(products: [Product]) {
        self.sectionRepresentables = []
        self.productsInSections = [:]
        self.productsInSections = createSections(for: products)
        self.buildRepresentable()
    }
    
    
    
    /**
     Build Representable
    */
    private func buildRepresentable() {
        
        // Iterate over each section
        for (type, products) in productsInSections {
            
            // Section Representable
            let sectionRepresentable = CollectionSectionRepresentable()
            
            // Header Representable
            let headerRepresenable = ProductHeaderViewRepresentable(title: type)
            
            // Set Header Representable
            sectionRepresentable.sectionHeaderRepresentable = headerRepresenable
            
            // Iterate over each product
            for product in products {
                
                // Cell Representable
                let cellRepresentable = ProductCollectionCellRepresentable(product: product)
                
                // Set Cell Represntables
                sectionRepresentable.cellsRepresentables.append(cellRepresentable)
    
            }
            
            // Append every Section Represntable to sectionsRepresantables list
            self.sectionRepresentables.append(sectionRepresentable)
        }
    }
    
    
    /**
     Create Section
     - Parameter products: prouducts as [Product]
     - Returns: Type:  Prouducts as [Type: [Product]]
     */
    private func
    createSections(for products: [Product]) -> [Type: [Product]] {
        // Grouping students by first letter of their names
        let groupedDictionary = Dictionary(grouping: products) { product in
            product.type
        }
        return groupedDictionary
    }
    
    
    /**
     Get numbet of sections
     - Returns: number of section as Int
    */
    func numberOfSections() -> Int {
        return sectionRepresentables.count
    }
    
    
    /**
     Get number of Items in section
     - Parameter section: Section number as Int
     - Returns: Number of items in section as Int
    */
    func numberOfItems(inSection section: Int) -> Int {
        return sectionRepresentables[section].cellsRepresentables.count
    }
    
    
    
    /**
     Get header representable for item
     - Parameter indexPath: indexPath  as IndexPath
     - Returns: Repersentable  as Collection Cell  Rerpresentable
    */
    func repersentableForItem(at indexPath: IndexPath) -> CollectionCellRepresentable? {
        return indexPath.item < sectionRepresentables[indexPath.section].cellsRepresentables.count ? sectionRepresentables[indexPath.section].cellsRepresentables[indexPath.item] : nil
    }
    

    /**
     Get header representable for section
     - Parameter section: section number as Int
     - Returns: Repersentable  as Collection Header Footer View Rerpresentable
    */
    func headerRepersentableForSection(at section: Int) -> CollectionHeaderFooterViewRepresentable? {
        return section < sectionRepresentables.count ? sectionRepresentables[section].sectionHeaderRepresentable : nil
    }

    


}


