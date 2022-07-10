//
//  ExtendedView.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 10/07/22.
//

import Foundation
import UIKit

class ExtendedView: UIView {
    private var _isLoaded = false
    
    var isLoaded: Bool {
        get{
            return _isLoaded
        }
    }
    //MARK: - Life Cycle method..
    override func layoutSubviews() {
        super.layoutSubviews()
        if(!_isLoaded){
            _isLoaded = true
            viewDidLayout()
        }
    }
    
    func viewDidLayout(){
        
    }
}
