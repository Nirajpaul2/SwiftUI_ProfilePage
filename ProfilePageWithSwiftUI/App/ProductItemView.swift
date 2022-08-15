//
//  ListingCellView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 04/08/22.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    let product: Product
    //MARK: - Body
    var body: some View {
        
        VStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 10) {
                //Photo
                ZStack {
                BannerImageView(product: product)
                
                AdAndLogoDetailView()
                        .offset(y: -80)
                        .frame(height: 25, alignment: .center)

                    ListingOfferView(product: product)
                        .offset(x: -65, y: 87)
                } //: ZStack

                //Name
                Text(product.name)
                    .font(.callout)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.top, 8)
                
                //price and discound view
                PriceAndDiscountView(product: product)
                
                // Ratings view
                ListingRatingView(product: product)
                
                Spacer()
                ListingAddToCartView()
                    .padding(.bottom, 20)
                
            } // : VStack
            .padding(.horizontal, 10)
            .padding(.top, 10)
            
        }// : VStack
        
    }
}

//MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 380))
            .background(Color.white)
        
    }
}
