//
//  NavigationBarDetailView.swift
//  Assignment3
//
//  Created by Purplle on 09/08/22.
//

import SwiftUI

struct NavigationBarDetailView: View {

    var body: some View {
        
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Button {
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding(.leading, 20)
                }

                Spacer()
            }
          //  Spacer()
            Divider()
                .foregroundColor(.lightGray)
                .padding(.bottom, 10)
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.fixed(width: 320, height: 80))
           
            .background(Color.white)
          
    }
}
