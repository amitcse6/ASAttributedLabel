//
//  ASAttribute.swift
//  superapp
//
//  Created by Amit on 17/8/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation
import UIKit

public enum ASAttributeType {
    case defaultAttr
    case markeAttr
}

public class ASAttribute {
    public var value: String?
    public var attrs: [NSAttributedString.Key : Any]?
    
    public init(value: String, attrs: [NSAttributedString.Key : Any]) {
        self.value = value
        self.attrs = attrs
    }
    
    public init(value: String, type: ASAttributeType) {
        self.value = value
        if #available(iOS 8.2, *) {
            self.attrs = getAttrsWith(type)
        } else {
            // Fallback on earlier versions
        }
    }
}
