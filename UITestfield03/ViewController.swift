//
//  ViewController.swift
//  UITestfield03
//
//  Created by D7703_23 on 2019. 4. 4..
//  Copyright © 2019년 D7703_23. All rights reserved.
//

import UIKit
//1번 delegate 상속받기
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //2번 커넥션
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextField.ViewMode.always
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let inString = myTextField.text
        
        print(inString!)
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    
    //delegate method
    // called when 'return' key pressed. return NO to ignore.
    //3번 가져오기
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        myTextField.resignFirstResponder()
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool{
        view.backgroundColor = UIColor.green
        return true
    }
    
}

