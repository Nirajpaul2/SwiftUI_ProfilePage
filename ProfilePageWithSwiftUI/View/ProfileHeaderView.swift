//
//  ProfileHeaderView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 02/08/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var image: String = ""
    var title: String = ""
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
               
            Text(title)
                .padding(1)
                .lineLimit(1)
            
        } // ZStack
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
