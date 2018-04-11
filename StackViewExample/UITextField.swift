//
//  UITextField.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/7/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    convenience init(placeholder:String, fontSize:CGFloat, borderStyle:UITextBorderStyle, parentStackView:UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.placeholder = placeholder
        self.font?.withSize(fontSize)
        self.borderStyle = borderStyle
        parentStackView.addArrangedSubview(self)
    }
}
