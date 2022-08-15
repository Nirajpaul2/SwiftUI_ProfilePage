//
//  HomeView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 03/08/22.
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
        NavigationView {
            VStack {
                
                Divider()
                
                //ScrollView
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                  
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
                    } //: VStack
                } // Scroll
            } //: VStack
        
            //MARK: Navigation Bar
            .appBar(title:"Hello Title", trillingBarIcons: ["search","cart","profile"]) {
            } searchButtonAction: {
            } myCartButtonAction: {
            } profileButtonAction: {
            }
        } //: Navigation

    }
}

//MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListingView()
    }
}
