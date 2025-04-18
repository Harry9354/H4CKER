//
//  DetailView.swift
//  H4CKER News
//
//  Created by Hariom Kumar on 10/07/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


