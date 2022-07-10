//
//  ForgotPasswordController.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import UIKit

class ForgotPasswordController : InterfaceExtendedController{
    
     let TAG = "ForgotPasswordController"
    
    //MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize(){
        paintNavigationTitle(text: "Forgot Password")
    }
    
    
    //MARK: - outlets
    
    @IBOutlet weak var forgotpasswordRootView : ForgotPasswordRootView?
    
}

//MARK: - Storyboard Instance

extension ForgotPasswordController {
    class func instance()->ForgotPasswordController?{
          
          let storyboard = UIStoryboard(name: "forgotpassword", bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: "forgotpassword") as? ForgotPasswordController else {return nil}
        return controller
      }
}
