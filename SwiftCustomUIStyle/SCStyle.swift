//
//  SCStyle.swift
//  SwiftCustomUIStyle
//
//  Created by Mac on 2/22/18.
//  Copyright © 2018 attractgroup. All rights reserved.
//

import Foundation

//open protocol StyleConstructor{
//    func setButtonStyle(name: String, customDetails: SCButtonDetails)
//}

private extension SCStyle{
    
}

public struct SCButtonDetails{
    var fontName: String?
    var fontSize: CGFloat?
    var fontColor: UIColor?
}

//extension SCStyle: StyleConstructor{
//
//}

open class SCStyle: NSObject {
    var buttonStyles = [String : SCButtonDetails]()
    
    open static let shared = SCStyle()
    open var buttonDetails: [String : (fontName: String, fontSize: CGFloat, fontColor: UIColor)]?{
        didSet{
            for styleName in Array(buttonDetails!.keys) {
                if let details: (fontName: String, fontSize: CGFloat, fontColor: UIColor) = buttonDetails![styleName]{
                    let buttonDetail = SCButtonDetails(fontName: details.fontName, fontSize: details.fontSize, fontColor: details.fontColor)
                    buttonStyles[styleName] = buttonDetail
                }
            }
        }
    }
}
