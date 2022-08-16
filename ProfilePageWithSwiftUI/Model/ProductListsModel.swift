//
//  ProductListsModel.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 04/08/22.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let price: String
    let discountPrice: String
    let percentageDiscount: String
    let overAllRating: String
    let noOfPersonToRate: String
    let offer: String
    let image: String
}
