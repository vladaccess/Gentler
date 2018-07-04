//
//  ViewController.swift
//  Gentler
//
//  Created by vladaccess on 07/04/2018.
//  Copyright (c) 2018 vladaccess. All rights reserved.
//

import UIKit
import Gentler

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gentler = GentlerView()
        gentler.frame = view.bounds
        gentler.animationDuration = 3
        gentler.startGentlePoint = .right
        gentler.endGentlePoint = .left
        gentler.setColors([UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0),
                           UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0),
                           UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0),
                           UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0),
                           UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                           UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                           UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)])
        gentler.startAnimate()
        self.view.insertSubview(gentler, at: 0)
    }



}

