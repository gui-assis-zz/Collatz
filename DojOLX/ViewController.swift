//
//  ViewController.swift
//  DojOLX
//
//  Created by Guilherme Assis on 12/02/17.
//  Copyright © 2017 Guilherme Assis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var edtNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnShowResultTapped(_ sender: AnyObject) {
        let number = Int(edtNumber.text!)
        lblResult.text = Collatz.sequence(number: number!)
        lblResult.isHidden = false
    }
}

