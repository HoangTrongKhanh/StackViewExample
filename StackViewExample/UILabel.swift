//
//  UILabel.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/7/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text:String, fontSize: CGFloat, parentStackView: UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font.withSize(fontSize)
        parentStackView.addArrangedSubview(self)
    }
}
