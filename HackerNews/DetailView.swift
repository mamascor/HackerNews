//
//  DetailView.swift
//  HackerNews
//
//  Created by Marco Mascorro on 4/10/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
       WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
