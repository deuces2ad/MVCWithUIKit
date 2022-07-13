//
//  InstagramSearchCollectionCell.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 12/07/22.
//

import Foundation
import UIKit

class InstagramSearchCollectionCell : ExtendedCollectionCell{
    
    static let cellIndentifier = "InstagramSearchCollectionCell"
    
    //MARK: - Life Cycle
    override func viewDidLayout() {
        super.viewDidLayout()
        initialize()

    }
    
    //MARK: - initialization
    func initialize(){
        addViews()
        layoutUI()
    }

    //MARK: - Properties
    
    var cellSize : CGSize {
        return self.frame.size
    }
    
    var allignBiggerImgToleft = false

    
    //MARK: - UI Elements
    lazy var sqrImg1 : UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .purple
        img.image = #imageLiteral(resourceName: "csk.jpeg")
        return img
    }()
    
   
    //MARK: - addSubviews
    
    func addViews(){
        addSubview(sqrImg1)
      
    }
    
    //MARK: - LayoutUI
    func layoutUI(){
        
        sqrImg1.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
         
    }
}


