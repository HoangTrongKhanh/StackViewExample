//
//  UIDevice.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/7/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
    static func setSize(iPhone: CGFloat, iPad: CGFloat) -> CGFloat {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return iPhone
        case .pad:
            return iPad
        default:
            return 0
        }
    }
}
