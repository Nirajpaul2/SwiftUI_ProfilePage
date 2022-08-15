//
//  BannerImageView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 08/08/22.
//

import SwiftUI

struct BannerImageView: View {
    //MARK: Property
    let product: Product
    
    //MARK: Body
    var body: some View {
        
        Image(product.image)
            .resizable()
            .scaledToFit()
            .background(Color.lightGray.opacity(0.1))
        
    }
}

struct BannerImageView_Previews: PreviewProvider {
    static var previews: some View {
        BannerImageView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
