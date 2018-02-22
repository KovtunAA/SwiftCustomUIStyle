//
//  SwiftCustomUIStyle.swift
//  SwiftCustomUIStyle
//
//  Created by Mac on 2/22/18.
//  Copyright © 2018 attractgroup. All rights reserved.
//

import Foundation

open class SwiftCustomUIStyle: NSObject {
    public static let shared = SwiftCustomUIStyle()
    
    open func hello(){
        debugPrint("Hello from SwiftCustomUIStyle!")
    }
}
