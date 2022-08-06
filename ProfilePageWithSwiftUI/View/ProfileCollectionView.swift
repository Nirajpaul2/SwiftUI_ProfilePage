//
//  ProfileCollectionView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 02/08/22.
//

import SwiftUI

struct ProfileCollectionView: View {
    //MARK: property
    var icon: String
    var title: String
   
    //MARK: Body
    var body: some View {
        //My order
        VStack {
            Image(icon)
                .resizable()
                .frame(width: 40, height: 35, alignment: .top)
            Text(title)
                .font(.subheadline)
                .foregroundColor(.lightGray)

        } //VStack
        .frame(width: 119, height: 100, alignment: .center)
        .border(Color("BorderColor"), width: 1)
        .onTapGesture {
            print("my Order Action")
        }
    }
}

//MARK: Preview
struct ProfileCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCollectionView(icon: "box", title: "My Orders")
            .previewLayout(.sizeThatFits)
           
    }
}
