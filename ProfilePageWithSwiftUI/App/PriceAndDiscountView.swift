//
//  PriceAndDiscountView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 09/08/22.
//

import SwiftUI

struct PriceAndDiscountView: View {
    //MARK: - Property
    
    let product: Product
    
    //MARK: - Body
    var body: some View {
        
        HStack(spacing: 5) {
            Text("₹\(product.price)")
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            ZStack {
                Text("₹\(product.discountPrice)")
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Color.gray
                    .frame(width: 35, height: 1)
            }
            
            Text(product.percentageDiscount)
                .font(.caption2)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.pinkColor)
        } //: HSTACK
        
    }
}

//MARK: - Preview
struct PriceAndDiscountView_Previews: PreviewProvider {
    static var previews: some View {
        PriceAndDiscountView(product: products[1])
            .previewLayout(.sizeThatFits)
            
    }
}
