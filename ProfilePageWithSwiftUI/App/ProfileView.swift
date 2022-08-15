//
//  ContentView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 26/07/22.
//

//https://stackoverflow.com/a/71188504/3475875
import SwiftUI

struct ProfileView: View {
    //MARK: Property
   
    var getProfileData: [ProfileData] = profileData
    var getProfileListingData: [ProfileData] = profileListingData

    //MARK: Body
    var body: some View {
        NavigationView {
            VStack() {
             
                Divider()
                /// Geometry is similar like UIScreen.main.bounds
                GeometryReader { geometry in
                    ScrollView(showsIndicators: false) {
                        
                        // Profile Header
                        /// All about group: https://www.hackingwithswift.com/quick-start/swiftui/how-to-group-views-together
                        
                        Group {
                            ProfileHeaderView(image: "icon", title: "Hello!")
                        }
                        .frame(width: 115, height: 110, alignment: .center)
                       
                        // Login and SignUp Button
                        Group {
                            HStack {
                              
                                //LoginIn
                                Button {

                                } label: {
                                    Text("Login to Purplle")
                                }.foregroundColor(.pinkColor).font(.subheadline)
                                //or
                                Text("or").font(.subheadline)
                                
                                //SignUP
                                Button {

                                } label: {
                                    Text("Sign Up")
                                }.foregroundColor(.pinkColor).font(.subheadline)
                                
                            }

                            Text("to get product recommendations, Track your orders and lot more.").lineLimit(2).frame(width: 250, height: 40, alignment: .top).font(.subheadline)
                        }
                        
                     HStack {
                         ForEach(0..<getProfileData.count) { item in
                                ProfileCollectionView(icon: profileData[item].icon, title: profileData[item].title)
                            }
                        }

                        // Profile Header
                        Group {
                            
                            ProfileHeaderView(image: "share&feedback", title: "Share & Feedback")
                        }
                        .frame(width: 145, height: 85, alignment: .center)

                        // Profile Listing view loading
                        Group  {
                            ForEach(0..<getProfileListingData.count) { item in
                                ProfileListView(listingCellLeadingIcon: profileListingData[item].icon, listingCellTitle:profileListingData[item].title)
                            }

                        } // listing
                        .padding()
                        .frame(height: 50, alignment: .center)

                        LoginButton()

                        HStack {
                            Text("Don't have an account?").foregroundColor(.lightGray).font(.footnote)
                            Button {

                            } label: {
                                Text("Sign Up")
                            }.foregroundColor(.lightGray)

                        }
                        .padding(.bottom, 40)

                        //MARK: Navigation Bar

                        .appBar(title:"", trillingBarIcons: ["search","cart","profile"]) {

                        } searchButtonAction: {

                        } myCartButtonAction: {

                        } profileButtonAction: {
                            
                        }

                    }  // ScrollView
                    .navigationBarTitleDisplayMode(.inline)

                } // geometry reader
            } // VStack

        }// Navigation
    }

}

//MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
