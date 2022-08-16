//
//  AdAndLogoDetailView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 10/08/22.
//

import SwiftUI

struct AdAndLogoDetailView: View {
    
    var body: some View {
        HStack() {
            Image("brand")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .center)
            Spacer()
            
            Text("AD")
                .font(.system(.caption))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal,3)
                .background(
                    Color.gray
                )
        }
    }
}

struct AdAndLogoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AdAndLogoDetailView()
            .previewLayout(.fixed(width: 320, height: 20))
           
    }
}
