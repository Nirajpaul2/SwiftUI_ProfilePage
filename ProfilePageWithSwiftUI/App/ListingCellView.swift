//
//  ListingCellView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 04/08/22.
//

import SwiftUI

struct ListingCellView: View {
    //MARK: Property
    //var product: ProductList
    
    
    //MARK: Body
    var body: some View {
        Text("product.price")
        //Image(product.price)
    }
}

//MARK: Preview
struct ListingCellView_Previews: PreviewProvider {
    static let productLists: [ProductList] = Bundle.main.decode("product.json")

    static var previews: some View {
        ListingCellView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
