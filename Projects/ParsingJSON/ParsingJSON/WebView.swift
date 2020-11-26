//
//  WebView.swift
//  ParsingJSON
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {

    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {

    }
}
