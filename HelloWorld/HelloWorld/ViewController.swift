//
//  ViewController.swift
//  HelloWorld
//
//  Created by 류민우 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

