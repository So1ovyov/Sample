//
//  CustomElements.swift
//  Sample
//
//  Created by Максим Соловьёв on 07.12.2020.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

   private func setup() {
    translatesAutoresizingMaskIntoConstraints = false
    backgroundColor = .white
    layer.cornerRadius = 4
    layer.borderWidth = 1
    layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
    leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
    leftViewMode = .always
    }
    
    func setupPlaceholder(text: String) {
        self.placeholder = text
    }
}
