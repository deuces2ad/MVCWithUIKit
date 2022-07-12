//
//  ExtendedCollectionCell.swift
//  MVCWithUIKIt
//
//  Created by abhishek dhiman on 12/07/22.
//

import UIKit

class ExtendedCollectionCell: UICollectionViewCell {
  
  private var isLoaded = false;
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    if(!isLoaded){
      isLoaded = true
      viewDidLayout()
    }
  }
  
  func viewDidLayout(){
    
  }
}
