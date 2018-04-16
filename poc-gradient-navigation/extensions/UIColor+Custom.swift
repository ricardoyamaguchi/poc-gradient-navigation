//
//  UIColor+Custom.swift
//  poc-gradient-navigation
//
//  Created by MacBook on 15/04/18.
//  Copyright © 2018 Ricardo Yamaguchi. All rights reserved.
//

import UIKit

extension UIColor {

    static var safetyOrange: UIColor {
        get {
            return UIColor(red: 230/255.0, green: 97/255.0, blue: 0/255.0, alpha: 1)
        }
    }

    static var orangePeel: UIColor {
        get {
            return UIColor(red: 254/255.0, green: 161/255.0, blue: 0/255.0, alpha: 1)
        }
    }

    func isLight() -> Bool {
        guard let components = cgColor.components else {return false}
        let brightness = ((components[0] * 299) + (components[1] * 587) + (components[2] * 114)) / 1000
        return brightness > 0.5
    }
    
}
