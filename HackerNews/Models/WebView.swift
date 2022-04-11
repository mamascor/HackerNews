//
//  WebView.swift
//  HackerNews
//
//  Created by Marco Mascorro on 4/10/22.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
