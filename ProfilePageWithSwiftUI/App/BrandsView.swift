//
//  Brands.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 03/08/22.
//

import SwiftUI


//MARK: - Example 1

struct BrandsView: View {

    let variable = Utility()
       init() {
         let str = variable.GetData()
         print(str)
       }

    var body: some View {
        Text("Brand View")
    }
}

//MARK: - Example 2
struct BrandsView2: View {

    let variable = Utility()

    var body: some View {
        Text("Brand View")
            .onAppear {
              let str = variable.GetData()
              print(str)
        }
    }
}

struct Brands_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
    }
}
