//
//  RatingView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 09/08/22.
//

import SwiftUI

struct ListingRatingView: View {
    
    let product: Product
    
    var body: some View {
        
        HStack(spacing: 5) {
            Text("\(product.overAllRating) ★")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
                .frame(width: .infinity, height: 21, alignment: .center)
                .background(Color.appGreenColor.cornerRadius(10))
                
        
            Text("\(product.noOfPersonToRate) Ratings")
                .font(.footnote)
                .fontWeight(.regular)
                .foregroundColor(.gray)
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingRatingView(product: products[1])
            .previewLayout(.sizeThatFits)
            
    }
}
