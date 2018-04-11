//
//  UIColor.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/7/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(_ r:CGFloat, _ g:CGFloat, _ b:CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 0.8)
    }
}
