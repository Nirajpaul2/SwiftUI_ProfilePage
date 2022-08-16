//
//  ActivityIndi.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 11/08/22.
//

import Foundation
import UIKit
import SwiftUI

// How to wrap a custom UIView for SwiftUI
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-wrap-a-custom-uiview-for-swiftui
// https://developer.apple.com/tutorials/swiftui/interfacing-with-uikit
// https://sarunw.com/posts/uikit-in-swiftui/


// Example 1

///UIViewRepresentable(Protocol):  A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.
struct ActivityIndicator: UIViewRepresentable {
    
    //makeUIView() method responsible to return view.
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let v = UIActivityIndicatorView()
        
        return v
    }
    //updateUIView() method that will be called whenever the data for the view has changed.
    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        activityIndicator.startAnimating()
    }
}


// Example 2

struct MyUILabel: UIViewRepresentable {
    var text: String

    //makeUIView() method responsible to return view.
    func makeUIView(context: UIViewRepresentableContext<MyUILabel>)
                                 -> UILabel {
            let myLabel = UILabel()
            myLabel.text = text
            return myLabel
        }
    
    //updateUIView() method that will be called whenever the data for the view has changed.
    func updateUIView(_ uiView: UILabel,
                        context: UIViewRepresentableContext<MyUILabel>) {
            // Perform any update tasks if necessary
    }
}

// Example 3

struct CustomViewTest<T: UIView>: UIViewRepresentable {

    let view: T
    
    init(view: T,config: ((T)-> Void)?) {
        self.view = view
        config?(view)
    }
    
    init( bundle: Bundle, nibName: String, config: ((T)-> Void)?) {
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        let viewStack = nib.instantiate(withOwner: nil, options: nil)
        
        guard let view = viewStack.first as? T else {
            fatalError("")
        }
        self.init(view: view, config: config)
    }
    
    func makeUIView(context: Context) -> some UIView {
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

