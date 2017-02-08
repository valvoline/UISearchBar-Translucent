//
//  UISearchBar+Translucent.swift
//  UITranslucentSearchBar
//
//  Created by Costantino Pistagna on 08/02/2017.
//  Copyright © 2017 sofapps. All rights reserved.
//

import UIKit

extension UIImage {
    static func fromColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
}

extension UISearchBar {
    convenience init(frame: CGRect, translucent: Bool) {
        self.init(frame: frame)
        if translucent == true {
            self.isTranslucent = true
            self.searchBarStyle = .minimal
            self.backgroundImage = UIImage.fromColor(color: UIColor.clear)
            self.scopeBarBackgroundImage = UIImage.fromColor(color: UIColor.clear)
        }
    }
}

