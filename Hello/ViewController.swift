//
//  ViewController.swift
//  Hello
//
//  Created by admin on 20/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HelloLabel: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    @IBAction func clickButton(_ sender: Any) {
        self.HelloLabel.text = "Hello \(self.txtName.text!)"
    }
    
    @IBAction func changeTheme(_ sender: Any) {
        view.backgroundColor = UIColor.black
        for eachView in view.subviews{
            eachView.backgroundColor =
                UIColor.black
            if let lable = eachView as? UILabel{
                lable.textColor = UIColor.white
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.HelloLabel.text = "hello world after loaded"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

