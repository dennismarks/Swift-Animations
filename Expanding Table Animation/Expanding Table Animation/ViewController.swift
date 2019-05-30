//
//  ViewController.swift
//  Expanding Table Animation
//
//  Created by Dennis M on 2019-05-30.
//  Copyright © 2019 Dennis M. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var colourArray = ["blue", "cyan", "yellow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    
    
}
