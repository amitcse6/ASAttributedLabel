//
//  ASAttributedLabel+Extension.swift
//  superapp
//
//  Created by Amit on 17/8/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
extension ASAttributedLabel {
}

@available(iOS 9.0, *)
extension ASAttributedLabel {
    func getAttributedStringWith(_ attributes: [ASAttribute]) -> NSMutableAttributedString {
        let attriString = NSMutableAttributedString()
        attributes.forEach { (attribute) in
            let string = NSAttributedString(string: "\(attribute.value ?? "")", attributes: attribute.attrs)
            attriString.append(string)
        }
        return attriString
    }
    
    func getTextMessageWith(_ stringArray: [String]) -> String {
        var string = ""
        for (index, value) in stringArray.enumerated() {
            if index == stringArray.count {
                string.append("\(value)")
            }else {
                string.append("\(value) ")
            }
        }
        return string
    }
}
