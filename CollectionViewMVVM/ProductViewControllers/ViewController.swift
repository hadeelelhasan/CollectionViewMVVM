//
//  ViewController.swift
//  CollectionViewMVVM
//
//  Created by Hadeel El Hasan on 07/10/2021.
//
// second branch comment 
import UIKit

/// Product View Controller
class ProductViewController: UIViewController {
    
    /// Collection View
    @IBOutlet weak var collectionView: UICollectionView!
    
    /// View Model
    private(set) var viewModel: ProductViewModel!

    /// Products
    var products = [Product]()
    
     let itemsPerRow: CGFloat = 4
     let sectionInsets = UIEdgeInsets(
      top: 10.0,
      left: 30.0,
      bottom: 10.0,
      right: 30.0)  // in priavte struct
 
    
    /**
     View did load
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.products = fillProducts()
        self.viewModel = ProductViewModel(products: products)
        self.setupCollectionView()
        self.collectionView.reloadData()
    }
    
    
    /**
     Fill products
     - Returns: Array of products
    */
    private func fillProducts() -> [Product] {
        let products = [Product(name: "Apple", emoji: "🍎", type: .fruit), Product(name: "Banana", emoji: "🍌", type: .fruit), Product(name: "Avocado", emoji: "🥑", type: .vegetable), Product(name: "strawberry", emoji: "🍓", type: .fruit), Product(name: "tomato", emoji: "🍅", type: .vegetable), Product(name: "shortcake", emoji: "🍰", type: .dessert), Product(name: "chocolate", emoji: "🍫", type: .dessert), Product(name: "cake", emoji: "🎂", type: .dessert), Product(name: "candy", emoji: "🍬", type: .dessert), Product(name: "shaved ice", emoji: "🍧", type: .dessert), Product(name: "cookie", emoji: "🍪", type: .dessert), Product(name: "corn", emoji: "🌽", type: .vegetable), Product(name: "broccoli", emoji: "🥦", type: .vegetable), Product(name: "papper", emoji: "🫑", type: .vegetable), Product(name: "kiwi", emoji: "🥝", type: .fruit), Product(name: "cherries", emoji: "🍒", type: .fruit), Product(name: "pineapple", emoji: "🍍", type: .fruit), Product(name: "cucumber", emoji: "🥒", type: .vegetable), Product(name: "grapes", emoji: "🍇", type: .fruit), Product(name: "watermelon", emoji: "🍉", type: .fruit), Product(name: "pear", emoji: "🍐", type: .fruit)]
    return products
    }
    
    
    
    /**
     Setup Table View
    */
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

