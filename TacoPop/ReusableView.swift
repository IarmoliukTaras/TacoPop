//
//  ReusableView.swift
//  TacoPop
//
//  Created by 123 on 19.03.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
