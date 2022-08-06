//
//  ProductListsModel.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 04/08/22.
//

import Foundation

struct ProductList: Codable, Identifiable {
    let id: String
    let name: String
    let price: String
    let discountPrice: String
    let percentageDiscount: String
    let overAllRating: String
    let noOfPersonToRate: String
    let offer: String
    let image: String
}
