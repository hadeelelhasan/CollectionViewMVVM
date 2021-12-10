//
//  ProductViewControllerExtension.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//

import UIKit

    //;;;;
// comment here from seconde beanch
// comment from second then to main

// Hello from main
// test desktop gitHub
// MARK: - Collection View Data Source
extension ProductViewController: UICollectionViewDataSource {
    
    /**
     Number Of Items In Sectios
     - Parameters:
      - collectionView: Collection view as UICollectionView
      - section: section number as Int
     - Returns: number of items in section as Int
    */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.viewModel.numberOfItems(inSection: section)
    }
    
    
    /**
     Number Of Sections
     - Parameters:
      - collectionView : collection view as UICollectionView
     - Returns: number of sections as Int
    */
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        self.viewModel.numberOfSections()
    }
    
    
    
    /**
     Cell For Item At IndexPath
     - Parameters:
      - collectionView: collection view as UICollectionView
      - indexPath: indexPath for row as IndexPath
     - Returns: collection View Cell as UICollectionViewCell
     */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let representable = self.viewModel.repersentableForItem(at: indexPath) as? ProductCollectionCellRepresentable else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.getResusIdentifier(), for: indexPath) as? ProductCollectionViewCell
        cell?.setup(representale: representable)
        return cell ?? UICollectionViewCell()
    }
    
    
    /**
    Get ReusableView For Header In Section
     - Parameters:
      - collectionView: Collection view as UICollectionView
      - section: section number  as Int
     - Returns: View for Header as UICollectionReusableView
    */
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let representable = self.viewModel.headerRepersentableForSection(at: indexPath.section)  as? ProductHeaderViewRepresentable else {
                return UICollectionReusableView()
            }
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionView.getReuseIdentifier(), for: indexPath) as? HeaderCollectionView
            header?.setup(representable: representable)
            return header ?? UICollectionReusableView()
            
            
        default:
            return UICollectionReusableView()
        }
    }
}

// MARK: - Collection View Delegate
extension ProductViewController: UICollectionViewDelegate {
    
    /**
    Did highlight item at indexPath
    - Parameters:
     - collectionView: UICollectionView
     - indexPath: IndexPath
    */
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) {
            cell.contentView.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        }
    }

    /**
    Did UNhighlight item at indexPath
    - Parameters:
     - collectionView: UICollectionView
     - indexPath: IndexPath
    */
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) {
            cell.contentView.backgroundColor = nil
        }
    }
}


// MARK: - Collection View Flow Layout Delegate
extension ProductViewController: UICollectionViewDelegateFlowLayout {
  
    
    
    /**
    Size For Item At indexPath
    - Parameters:
     - collectionView: UICollectionView
     - collectionViewLayout: UICollectionViewLayout
     - indexPath: IndexPath
   - Returns: Item size as CGSize
    */
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath
  ) -> CGSize {
    
    let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
    let availableWidth = view.frame.width - paddingSpace
    let widthPerItem = availableWidth / itemsPerRow
    
    return CGSize(width: widthPerItem, height: widthPerItem)
  }
  
  
    /**
    Inset For Section At section
    - Parameters:
     - collectionView: UICollectionView
     - collectionViewLayout: UICollectionViewLayout
     - section : section number as Int
   - Returns:  UIEdgeInsets
    */
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    insetForSectionAt section: Int
  ) -> UIEdgeInsets {
    return sectionInsets
  }
  
}
