//
//  InstagramSearchController.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 12/07/22.
//

import Foundation
import UIKit

class InstagramSearchController :  UICollectionViewController {
    
    let cellIndentifier = "InstagramSearchCollectionCell"
    
    //MARK: - LifeCycle method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .lightGray
        collectionView.collectionViewLayout = compositionalLayot()
        initialize()
    }
    
    //MARK: - Properties
    var enableAlertnatePostions : Bool = true
    
    //MARK: - Initialization
    func initialize(){
        registerCollectionViewCell()
    }
    
    //MARK: - registerCell
    func registerCollectionViewCell(){
        
        self.collectionView.register(InstagramSearchCollectionCell.self, forCellWithReuseIdentifier: cellIndentifier)
    }
    
    //MARK: -  Comp. layout
    
    func compositionalLayot() -> UICollectionViewCompositionalLayout {
        let item = CompositionalLayout.createItem(width: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 1)
        
        let fullItem = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 1)
        
        let verticalGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(0.5), height: .fractionalHeight(1.0), item: fullItem, count: 2)
        
        let horizontalGroup = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(0.5), height: .fractionalHeight(1.0), items: [verticalGroup])
        
        let group = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1.0), height: .absolute(200), items: [horizontalGroup,item])
        
        let group2 = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1.0), height: .absolute(200), items: [item,horizontalGroup])
        
        let mainGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(1.0), height: .fractionalHeight(1), items: [group,group2])
        
        let section = NSCollectionLayoutSection(group: mainGroup)
        
        // return
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension InstagramSearchController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as? InstagramSearchCollectionCell else { return UICollectionViewCell() }
        
        cell.backgroundColor = .black
        return cell
    }
}
