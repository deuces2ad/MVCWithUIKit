//
//  LoginTextFieldView.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import UIKit

class LoginTextFieldView: UIView {
    //MARK: - Properties
    static var textField: UITextField?
    
    //MARK: - Methods
    static func txtFldWithImage(subHeading:String,txtFld:UITextField,sideImage:UIImage)->UIView{
        self.textField = txtFld
        let view = UIView()
        view.backgroundColor = .clear
        // Header lbl
        let lbl = UILabel()
        lbl.text = subHeading
        lbl.textColor = AppTheme.lightBlueColor
        // side Image
        let imageView = UIImageView()
        // sepratorView
        let septorView = UIView()
        
        //MARK: - Add subViews
        view.addSubview(lbl)
        view.addSubview(txtFld)
        view.addSubview(septorView)
        view.addSubview(imageView)
        
        imageView.image = sideImage.withTintColor(AppTheme.lightBlueColor,renderingMode: .alwaysOriginal)
        
        imageView.alpha = 0.87
        
        
        //MARK: - Layout UI
        
        lbl.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 10, left: 25, bottom: 0, right: 0))
        
        imageView.centerY(inView: txtFld)
        imageView.anchor(top: nil, leading: nil, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 20),size: .init(width: 20, height: 20))
        
        txtFld.anchor(top: lbl.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: imageView.leadingAnchor,padding: .init(top: 5, left: 25, bottom: 0, right: 10),size: .init(width: 0, height: 40))
        
        septorView.anchor(top: txtFld.bottomAnchor, leading: txtFld.leadingAnchor, bottom: nil, trailing: imageView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0),size: .init(width: 0, height: 0.5))
        septorView.backgroundColor = .lightGray
        return view
    }
}

