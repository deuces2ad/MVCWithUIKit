//
//  LoginRootView.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import UIKit

class LoginRootView : ExtendedView {
    
    //MARK: - Life Cycle Method
    override func viewDidLayout() {
        super.viewDidLayout()
        initialization()
    }
    
    //MARK: - Initialization
    func initialization(){
        renderViewItems()
        layoutUI()
    }
    
    
    //MARK: - Properties
    
  var didTapLoginListener: (()->())?
    
    lazy var emailTxtField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        return tf
    }()
    
    lazy var passwordTxtField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        return tf
    }()
    
    lazy var emailContainerView: UIView = {

        let view = LoginTextFieldView.txtFldWithImage(subHeading: "Email", txtFld: self.emailTxtField, sideImage:  #imageLiteral(resourceName: "black_user_profile_icon"))
        return view
    }()
    
    lazy var passwordContainerView : UIView = {
        let view = LoginTextFieldView.txtFldWithImage(subHeading: "Password ", txtFld: self.passwordTxtField, sideImage:  #imageLiteral(resourceName: "visibility_off_24px_outlined"))
        return view
    }()
    
    lazy var loginBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = AppTheme.lightBlueColor
        let rawBtnTitle = NSMutableAttributedString()
        
        let attributedTxt = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18,weight: .bold)])
        rawBtnTitle.append(attributedTxt)
        
        btn.setAttributedTitle(rawBtnTitle, for: .normal)
        btn.addTarget(self, action: #selector(loginBtnAction), for: .touchUpInside)
        btn.layer.cornerRadius = 8
        return btn
    }()

    //MARK: - Listners
    @objc
    private func loginBtnAction() {
      didTapLoginListener?()
    }
    
    //MARK: - AddViews
    func renderViewItems(){
        
        addSubview(emailContainerView)
        addSubview(passwordContainerView)
        addSubview(loginBtn)
    }
    
    
    //MARK: - Layout UI
    func layoutUI(){

        emailContainerView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 100, left: 0, bottom: 0, right: 0),size: .init(width: 0, height: 80))
        
        passwordContainerView.anchor(top: emailContainerView.bottomAnchor, leading: emailContainerView.leadingAnchor, bottom: nil, trailing: emailContainerView.trailingAnchor,size: .init(width: 0, height: 80))
        
        loginBtn.anchor(top: passwordContainerView.bottomAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 20, left: 0, bottom: 0, right: 0),size: .init(width: 0, height: 40))
        loginBtn.widthEqualToView(self, multiplier: 0.5)
        
        loginBtn.centerX(inView: passwordContainerView)
    }
    
}
