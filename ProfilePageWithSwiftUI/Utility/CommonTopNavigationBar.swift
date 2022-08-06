//
//  CommonTopNavigationBar.swift
//  ProfilePageWithSwiftUI
//
//  Created by Purplle on 02/08/22.
//

import SwiftUI

extension View {
    public func appBar(title: String = "", trillingBarIcons: [String?] = ["","",""], backButtonAction: @escaping() -> Void, searchButtonAction: @escaping() -> () = {}, myCartButtonAction: @escaping() -> () = {}, profileButtonAction: @escaping() -> () = {}) -> some View {
        self.navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                HStack {
                Button {
                    backButtonAction()
                } label: {
                    Image(systemName: "arrow.left").foregroundColor(.black)
                }
                Image("purplleLogo")
                
            }, trailing:
                HStack {
                Button {
                    searchButtonAction()
                } label: {
                    Image(trillingBarIcons[0] ?? "").foregroundColor(.black)
                }
                Button {
                    myCartButtonAction()
                } label: {
                    Image(trillingBarIcons[1] ?? "").foregroundColor(.black)
                }
                Button {
                    profileButtonAction()
                } label: {
                    Image(trillingBarIcons[2] ?? "").foregroundColor(.black)
                }
            } //HStack
      )
    }
}
