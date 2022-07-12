//
//  InstagramSearchCollectionCell.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 12/07/22.
//

import Foundation
import UIKit

class InstagramSearchCollectionCell : ExtendedCollectionCell{
    
    
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
    
    //Stack Achors....
   private var upperStackLeadingAnchor : NSLayoutXAxisAnchor? {
        return allignBiggerImgToleft ? leadingAnchor : nil
    }
    
    private var upperStackTrailingAnchor : NSLayoutXAxisAnchor? {
        return allignBiggerImgToleft ? nil : trailingAnchor
    }
    
    //Bigger Img Achors....
    private var biggerImgLeadingAnchor : NSLayoutXAxisAnchor? {
        return allignBiggerImgToleft ? upperStackView.trailingAnchor : leadingAnchor
    }
    
    private var biggerImgTrailingAnchor : NSLayoutXAxisAnchor? {
        return allignBiggerImgToleft ? trailingAnchor : upperStackView.leadingAnchor
    }
    
    //MARK: - UI Elements
    lazy var sqrImg1 : UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .purple
        img.image = #imageLiteral(resourceName: "csk.jpeg")
        return img
    }()
    
    lazy var sqrImg2 : UIImageView = {
        let img = UIImageView()
//        img.backgroundColor = .green
        img.image = #imageLiteral(resourceName: "rcb")
        return img
    }()
    
    lazy var sqrImg3 : UIImageView = {
        let img = UIImageView()
//        img.backgroundColor = .blue
        img.image = #imageLiteral(resourceName: "job")
        return img
    }()
    
    lazy var sqrImg4 : UIImageView = {
        let img = UIImageView()
//        img.backgroundColor = .yellow
        img.image = #imageLiteral(resourceName: "hyd")
        return img
    }()
    
    lazy var biggerImg : UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .systemTeal
        img.image = #imageLiteral(resourceName: "kkr.png")
        img.contentMode = .scaleToFill
        return img
    }()
    
    lazy var upperStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sqrImg1,sqrImg2])
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.distribution  = .fillEqually
        stackView.alignment = UIStackView.Alignment.center
        return stackView
    }()

    lazy var lowerStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sqrImg3,sqrImg4])
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.distribution  = .fillEqually
        stackView.alignment = UIStackView.Alignment.center
        return stackView
    }()
    
    //MARK: - Switch Postions
    
   

    //MARK: - addSubviews
    
    func addViews(){
        addSubview(upperStackView)
        addSubview(lowerStackView)
        addSubview(biggerImg)
    }
    
    //MARK: - LayoutUI
    func layoutUI(){
        
        upperStackView.anchor(top: topAnchor,
                              leading: upperStackLeadingAnchor,
                              bottom: nil,
                              trailing: upperStackTrailingAnchor,
                              size: .init(width: cellSize.width * 0.70 - 13, height: cellSize.height * 0.50))
        
        lowerStackView.anchor(top: upperStackView.bottomAnchor,
                              leading: upperStackLeadingAnchor, bottom: nil,
                              trailing: upperStackTrailingAnchor,
                              size: .init(width: cellSize.width * 0.70 - 13, height: cellSize.height * 0.50))
        
        biggerImg.anchor(top: topAnchor,
                         leading: biggerImgLeadingAnchor,
                         bottom: bottomAnchor,
                         trailing: biggerImgTrailingAnchor)
        

        
        sqrImg1.anchor(top: upperStackView.topAnchor, leading: nil, bottom: nil, trailing: nil)
        sqrImg2.anchor(top: upperStackView.topAnchor, leading: nil, bottom: nil, trailing: nil)
        sqrImg3.anchor(top: upperStackView.bottomAnchor, leading: nil, bottom: nil, trailing: nil)
        sqrImg4.anchor(top: upperStackView.bottomAnchor, leading: nil, bottom: nil, trailing: nil)
         
    }
}


