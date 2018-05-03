//
//  SCButton.swift
//  SwiftCustomUIStyle
//
//  Created by Mac on 2/22/18.
//  Copyright © 2018 attractgroup. All rights reserved.
//

import Foundation
import UIKit

private extension SCButton{
    func setStyle(style: String){
        print(style)
    }
}

@IBDesignable
open class SCButton: UIButton {
    var styleNumber:Int = 0
    var style: SCButtonDetails?
    
    // IB: use the adapter
    @IBInspectable var shapeAdapter:Int {
        get {
            return self.styleNumber
        }
        set( styleIndex) {
            self.styleNumber = styleIndex
        }
    }
}
