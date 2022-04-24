//
//  ViewController.swift
//  DatePicker
//
//  Created by 류민우 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblSelectTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblSelectTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
}

