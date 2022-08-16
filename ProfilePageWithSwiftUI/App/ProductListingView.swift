//
//  HomeView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 03/08/22.
//
///  NavigationView {
//VStack() {
//
//    Divider()
//    /// Geometry is similar like UIScreen.main.bounds
//    GeometryReader { geometry in
//        ScrollView(showsIndicators: false) {
            

//MARK: - Link Ref
///https://programmingwithswift.com/getting-started-with-lazyvstack-lazyhstack-in-swiftui/

import SwiftUI

struct ProductListingView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
        // NavBar
      //  NavigationView {
            VStack {
                
              //  Divider()
                CustomViewTest(bundle: .main, nibName: "CustomView") { view in
                    
                }
                .frame(height: 50)
            
                //ScrollView
                ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, spacing: 1) {
                            ForEach(products) { product in
                                    HStack {
                                        ProductItemView(product: product)
                                            .background(Color.white)
                                } //: HStack
                            } //: loop
                            .frame(height: 390)
                        } //: Grid
                        .background(Color.lightGray.opacity(0.2))
                } // Scroll
            } //: VStack
        
          
      //  } //: Navigation

    }
}

//MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListingView()
    }
}


/*
               MyUILabel(text: "hiiii")
                     .frame(height: 40)
                     .padding()
 
 CustomViewTest(bundle: .main, nibName: "CustomView") { view in
     
 }
 .frame(height: 50)
 
 */
