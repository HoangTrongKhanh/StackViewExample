//
//  UIStackView.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/6/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    func changeBackgroundColor(color:UIColor) {
        let backgroundLayer = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
}
