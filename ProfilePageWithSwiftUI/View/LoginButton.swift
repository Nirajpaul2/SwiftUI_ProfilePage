//
//  LoginButton.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 29/07/22.
//

import SwiftUI

struct LoginButton: View {
    //MARK: Property
    
    //MARK: Body
    var body: some View {
        Button {
        } label: {
            Text("Login")
        }
        .foregroundColor(.white)
        .font(.callout)
        .frame(width: 100, height: 40, alignment: .center)
        .background(Color("Pink"))
        .cornerRadius(2)
        .shadow(color: .gray, radius: 3, x: 2, y: 2)
    } // body end
}

//MARK: Preview
struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
            .previewLayout(.sizeThatFits)
    }
}
