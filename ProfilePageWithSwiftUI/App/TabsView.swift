//
//  HomeView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 03/08/22.
//

import SwiftUI

struct TabsView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
           
            CategoriesView()
                .tabItem {
                    Image(systemName: "scissors")
                    Text("Categories")
                }
          
            BrandsView()
                .tabItem {
                    Image(systemName: "shield")
                    Text("Brands")
                }
           
            OffersView()
                .tabItem {
                    Image(systemName: "checkmark.seal")
                    Text("Offers")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "lock.doc")
                    Text("Profile")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
