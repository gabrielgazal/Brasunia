//
//  DesignableView.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
 
}
