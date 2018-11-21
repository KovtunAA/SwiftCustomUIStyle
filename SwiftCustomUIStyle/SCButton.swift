//
//  SCButton.swift
//  SwiftCustomUIStyle
//
//  Created by Mac on 2/22/18.
//  Copyright © 2018 attractgroup. All rights reserved.
//

import UIKit

protocol SCStyleDelegate: class {
    func changeStyle(_ index: Int)
}

struct ButtonStyle {
    static var textColor: UIColor?
    static var textFont = UIFont.systemFont(ofSize: 15)
    static var backgroundColor: UIColor?
    static var cornerRadius: CGFloat = 0
    static var borderWidth: CGFloat = 0
    static var borderColor: UIColor?
    
    static func switchSettings(textColor: UIColor? = nil, textFont: UIFont? = nil, backgroundColor: UIColor? = nil,
                               cornerRadius: CGFloat? = nil, borderWidth: CGFloat? = nil, borderColor: UIColor? = nil){
        if let tColor = textColor{
            ButtonStyle.textColor = tColor
        }
        if let bColor = backgroundColor{
            ButtonStyle.backgroundColor = bColor
        }
        if let tFont = textFont{
            ButtonStyle.textFont = tFont
        }
        if let cRadius = cornerRadius{
            ButtonStyle.cornerRadius = cRadius
        }
        if let bWidth = borderWidth{
            ButtonStyle.borderWidth = bWidth
        }
        if let bColor = borderColor{
            ButtonStyle.borderColor = bColor
        }
    }
}

@IBDesignable class SCButton: UIButton {
    @IBInspectable var buttonStyle: Int = -1 {
        didSet {
            self.changeButtonStyle()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.changeButtonStyle()
    }
    
    func changeStyle(_ index: Int) {}
}


fileprivate extension SCButton {
    func changeButtonStyle() {
        self.changeStyle(self.buttonStyle)
        self.buttonSettings()
    }
    
    func buttonSettings(){
        self.setTitleColor(ButtonStyle.textColor, for: .normal)
        self.titleLabel?.font = ButtonStyle.textFont
        self.backgroundColor = ButtonStyle.backgroundColor
        
        self.layer.cornerRadius = ButtonStyle.cornerRadius
        self.layer.borderWidth = ButtonStyle.borderWidth
        self.layer.borderColor = ButtonStyle.borderColor?.cgColor
    }
}
