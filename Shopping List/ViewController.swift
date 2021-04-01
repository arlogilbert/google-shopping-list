//
//  ViewController.swift
//  Shopping List
//
//  Created by Arlo Gilbert on 3/27/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var webViewContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //overrideUserInterfaceStyle = .dark

        /* set up the webview */
        webView.uiDelegate = self // Move delegate here
        webViewContainer.translatesAutoresizingMaskIntoConstraints = true

        // view behaviors & styles
        //webView.isOpaque = true
        //webView.backgroundColor = UIColor.clear
        //webView.backgroundColor = UIColor(red:0.11, green:0.13, blue:0.19, alpha:1)
        webView.backgroundColor = UIColor.systemBackground
        webView.scrollView.backgroundColor = UIColor.systemBackground
        webView.scrollView.bounces = true
        webViewContainer.insetsLayoutMarginsFromSafeArea = true

        // view heights & widths
        webViewContainer.clipsToBounds = true
        webView.clipsToBounds = true
        webViewContainer.frame = CGRect.init(x: 0, y: UIApplication.shared.statusBarFrame.height, width: view.bounds.maxX, height: view.bounds.maxY)
        webView.frame = CGRect.init(x: 0, y: 0, width: webViewContainer.bounds.maxX, height: webViewContainer.bounds.maxY)
        /* load Google Shopping */
        let url = URL(string: "https://shoppinglist.google.com/")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
