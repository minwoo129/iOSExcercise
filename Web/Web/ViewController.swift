//
//  ViewController.swift
//  Web
//
//  Created by 류민우 on 2022/05/01.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGotoUrl(_ sender: UIButton) {
    }
    
    @IBAction func btnGotoSite1(_ sender: UIButton) {
    }
    
    @IBAction func btnGotoSite2(_ sender: UIButton) {
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

