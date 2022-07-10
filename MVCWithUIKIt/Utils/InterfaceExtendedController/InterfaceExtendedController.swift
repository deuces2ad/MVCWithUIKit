//
//  InterfaceExtendedController.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import UIKit

class InterfaceExtendedController: UIViewController {

    private let TAG = "InterfaceExtendedController"
    
    //MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }
    
    //MARK: - Initialization
    private func initialization(){
        registerForTapGestureForKeyboardResign()
    }
    
    //MARK: - Methods
    func hideNavigationBar(){
      Log.echo(key: TAG, text: "Navigation bar hidden")
      self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func showNavigationBar(){
      Log.echo(key: TAG, text: "Navigation bar shown")
      self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func paintNavigationTitle(text : String?){
      guard let title = text else {
        return
      }
      self.title = title
      return
    }
    
}


extension InterfaceExtendedController: UIGestureRecognizerDelegate{
  
  fileprivate func registerForTapGestureForKeyboardResign(){
    
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
    tapGesture.delegate = self
    tapGesture.cancelsTouchesInView = false
    self.view.addGestureRecognizer(tapGesture)
  }
  
  @objc
  private func hideKeyboard(){
    
    self.view.endEditing(true)
  }
}
