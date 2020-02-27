//
//  ViewController.swift
//  homepage
//
//  Created by Travis Neuman on 2/26/20.
//  Copyright © 2020 Travis Neuman. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let myURL = URL(string:"https://www.thedeadrobot.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
}

