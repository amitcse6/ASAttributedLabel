//
//  ViewController.swift
//  ASAttributedLabel
//
//  Created by amitpstu1@gmail.com on 08/17/2020.
//  Copyright (c) 2020 amitpstu1@gmail.com. All rights reserved.
//

import UIKit
import ASAttributedLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var detailsLabel: ASAttributedLabel!
    
    private var attributes = [
        ASAttribute(value: "You don't have an account ", type: .defaultAttr),
        ASAttribute(value: "Signup", type: .markeAttr),
        ASAttribute(value: "", attrs: [.font: UIFont.systemFont(ofSize: 16, weight: .black), .foregroundColor: UIColor.blue] as [NSAttributedString.Key : Any]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        detailsLabel.textAlignment = .center
        detailsLabel.numberOfLines = 0
        detailsLabel
            .setAttributes(attributes)
            .setEvent { [weak self] (attributeLabelIndex, attributeIndex, attribute) in
                if let value = attribute.value, value == "Signup" {
                    print("value: \(value)")
                    let alert = UIAlertController(title: "Alert", message: value, preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                    self?.present(alert, animated: true, completion: nil)
                }}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
