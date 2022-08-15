//
//  Constant.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 08/08/22.
//

import SwiftUI

// Data

let products: [Product] = Bundle.main.decode("product.json")


//LAYOUT

let columnSpacing: CGFloat = 0
let rowSpacing: CGFloat = 1
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
