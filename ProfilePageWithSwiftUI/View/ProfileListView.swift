//
//  ProfileListView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 02/08/22.
//

import SwiftUI

struct ProfileListView: View {
    //MARK: Property
    
    var listingCellLeadingIcon: String
    var listingCellTitle: String

    //MARK: Body
    var body: some View {
        VStack {
            HStack {
                Image(systemName: listingCellLeadingIcon)
                Text(listingCellTitle).font(.body)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

//MARK: Preview
struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView(listingCellLeadingIcon: "text.bubble", listingCellTitle: "Feedback")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
