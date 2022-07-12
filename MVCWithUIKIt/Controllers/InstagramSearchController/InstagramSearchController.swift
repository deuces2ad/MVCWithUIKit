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
        collectionView.contentInset = UIEdgeInsets(top: 10.0,left: 10.0,bottom: 10.0,right: 10.0)
        self.collectionView.register(InstagramSearchCollectionCell.self, forCellWithReuseIdentifier: cellIndentifier)
    }

}

extension InstagramSearchController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as? InstagramSearchCollectionCell else { return UICollectionViewCell() }
        
        cell.backgroundColor = .black
        if enableAlertnatePostions {
            cell.allignBiggerImgToleft = enableAlertnatePostions
            enableAlertnatePostions.toggle()
        }else{
            cell.allignBiggerImgToleft = enableAlertnatePostions
            enableAlertnatePostions.toggle()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = UIScreen.main.bounds.size
        return CGSize(width: size.width, height: size.height * 0.30)
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 1.0,left: 1.0,bottom: 1.0,right: 1.0)
//
//    }
    
}
