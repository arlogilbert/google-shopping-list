//
//  ViewController.swift
//  Shopping List
//
//  Created by Arlo Gilbert on 3/27/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let url = URL(string: "https://shoppinglist.google.com/")!
        webView.load(URLRequest(url: url))
          
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = true
    }
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        }
}
