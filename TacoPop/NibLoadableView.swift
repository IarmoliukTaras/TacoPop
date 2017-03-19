//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by 123 on 19.03.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
