//
//  ASAttribute+Extension.swift
//  superapp
//
//  Created by Amit on 17/8/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 8.2, *)
extension ASAttribute {
    func getAttrsWith(_ type: ASAttributeType) -> [NSAttributedString.Key : Any] {
        switch type {
        case .defaultAttr:
            return [.font: UIFont.systemFont(ofSize: 16, weight: .regular), .foregroundColor: UIColor.black] as [NSAttributedString.Key : Any]
        case .markeAttr:
            return [.font: UIFont.systemFont(ofSize: 16, weight: .bold), .foregroundColor: UIColor.blue] as [NSAttributedString.Key : Any]
        }
    }
}
