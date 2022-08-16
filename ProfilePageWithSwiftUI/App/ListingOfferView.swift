//
//  ListingOfferView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 09/08/22.
//

import SwiftUI

struct ListingOfferView: View {
    let product: Product
    
    var body: some View {
        
        Text(product.offer)
            .font(.system(size: 8))
            .fontWeight(.bold)
            .foregroundColor(.pinkColor)
            .padding(.horizontal,4)
            .padding(.vertical,2)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 1, x: 0, y: 0.5)
            )
    }
}

struct ListingOfferView_Previews: PreviewProvider {
    static var previews: some View {
        ListingOfferView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(
                Color.red
            )
    }
}
