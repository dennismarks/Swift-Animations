//
//  ViewController.swift
//  Circle Transition Animation
//
//  Created by Dennis M on 2019-05-29.
//  Copyright © 2019 Dennis M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.cornerRadius = 10.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let button = sender as! UIButton
            (segue as! CircleSegue).circleOrigin = button.center
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.delagate = self
        }
    }
    
}

extension ViewController: LabelUpdateDelegate {
    
    func userEnteredNewLabelName(name: String) {
        label.text = name
    }
    
}
