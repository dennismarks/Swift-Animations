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
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.cornerRadius = 10.0
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let newText = textField.text!
        delagate?.userEnteredNewLabelName(name: newText)
        let transition: CATransition = CATransition()
        transition.duration = 1.0
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }
    
}
