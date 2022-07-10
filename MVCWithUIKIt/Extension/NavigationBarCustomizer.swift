//
//  NavigationBarCustomizer.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import Foundation
import UIKit

class NavigationBarCustomizer{
    
    init() {
        initialization()
    }
    
    fileprivate func initialization(){
        updateTint()
    }
    
    func updateTint(){
        
        let navigationBarAppearace = UINavigationBar.appearance()
        
        navigationBarAppearace.tintColor = AppTheme.lightBlueColor
        navigationBarAppearace.barTintColor = AppTheme.lightBlueColor
        
        
        //change navigation item title color
        navigationBarAppearace.titleTextAttributes =  [NSAttributedString.Key.foregroundColor:AppTheme.lightBlueColor]
        navigationBarAppearace.isTranslucent = false
    }

    func updateStatusBar(){
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
    }
}
