//
//  ViewController.swift
//  Web
//
//  Created by 류민우 on 2022/05/01.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
        loadWebPage("http://2sam.net")
    }
    
    // 웹뷰 로딩 중일 때
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // 웹뷰 로딩이 끝났을 때
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // 웹뷰 로딩이 실패했을 때
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }

    @IBAction func btnGotoUrl(_ sender: UIButton) {
        
    }
    
    @IBAction func btnGotoSite1(_ sender: UIButton) {
        loadWebPage("http://fallinmac.tistory.com")
    }
    
    @IBAction func btnGotoSite2(_ sender: UIButton) {
        loadWebPage("http://blog.2sam.net")
    }
    
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
    }
    
    // toolbar
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnGoFoward(_ sender: UIBarButtonItem) {
    }
}

