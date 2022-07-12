//
//  LoginViewController.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import Foundation
import UIKit

class LoginViewController : InterfaceExtendedController{
    
    let TAG = "LoginViewController"
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    //MARK: - Initialization
    func initialization(){
        registerForListenrs()
    }
    
    lazy var rootView : LoginRootView = {
        let rootView = LoginRootView()
        rootView.backgroundColor = .white
        return rootView
    }()
    
    //MARK: - Register Listners
    func registerForListenrs(){
        
        rootView.didTapLoginListener = { [weak self] in
            
            guard let weakSelf = self else {return}
            Log.echo(key: weakSelf.TAG, text: "Login Button Tapped")
            
            guard let forgotVC = ForgotPasswordController.instance() else {
                Log.echo(key: weakSelf.TAG, text: "Failed to load StortBaord")
                return
            }
            _ = NavigationBarCustomizer()
            weakSelf.navigationController?.pushViewController(forgotVC, animated: true)
        }
    }
}
