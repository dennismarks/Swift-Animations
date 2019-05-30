//
//  SecondViewController.swift
//  Circle Transition Animation
//
//  Created by Dennis M on 2019-05-29.
//  Copyright © 2019 Dennis M. All rights reserved.
//

import UIKit

protocol LabelUpdateDelegate {
    func userEnteredNewLabelName(name: String)
}

class SecondViewController: UIViewController {
    
    var delagate: LabelUpdateDelegate?
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let newText = textField.text!
        delagate?.userEnteredNewLabelName(name: newText)
        self.dismiss(animated: true, completion: nil)
    }
    
}
