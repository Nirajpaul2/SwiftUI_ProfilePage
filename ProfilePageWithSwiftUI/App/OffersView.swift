//
//  OffersView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 03/08/22.
//

import SwiftUI

struct OffersView: View {
    
    var body: some View {
        VStack {
            
            CustomViewTest(bundle: .main, nibName: "CustomView") { view in
                
            }
            .frame(height: 50)
        
            Spacer()
        }
       
      
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersView()
    }
}
