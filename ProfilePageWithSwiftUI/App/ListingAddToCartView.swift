//
//  ListingButtonView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 09/08/22.
//

import SwiftUI

struct ListingAddToCartView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Button {} label: {
                Text("Add to cart")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.all, 5)
                    .padding(.horizontal, 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1.0)
                    )
                    .foregroundColor(.appButtonColor)
                   
            }
            Button {} label: {
               Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.pinkColor.opacity(0.2))
                    .frame(width: 25, height: 25)
            }
        }
    }
}

struct ListingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ListingAddToCartView()
            .previewLayout(.fixed(width: 220, height: 60))
            .padding()
    }
}
