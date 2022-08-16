//
//  Constant.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 08/08/22.
//

import SwiftUI
import UIKit
import Foundation

// Data

let products: [Product] = Bundle.main.decode("product.json")


//LAYOUT

let columnSpacing: CGFloat = 0
let rowSpacing: CGFloat = 1
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}




class Utility {
    func GetData() -> String{
        return "hello world"
    }
}


