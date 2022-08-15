//
//  UserProfileModel.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 02/08/22.
//

import Foundation

struct ProfileData: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
}


let profileData: [ProfileData] = [ProfileData(title: "My Order", icon: "box"), ProfileData(title: "My Account", icon: "user"), ProfileData(title: "Purplle Credit", icon: "wallet")]

let profileListingData: [ProfileData] = [ProfileData(title: "Feedback", icon: "text.bubble"), ProfileData(title: "Terms & Conditions", icon: "figure.walk"), ProfileData(title: "About Purplle", icon: "heart.circle"), ProfileData(title: "Contact Us", icon: "phone")]

