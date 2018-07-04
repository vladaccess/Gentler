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
    
    @IBOutlet weak var lbl:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLbl()
        let gentler = GentlerView()
        gentler.frame = view.bounds
        gentler.animationDuration = 3
        gentler.startGentlePoint = .top
        gentler.endGentlePoint = .bottom
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
    
    
    func setUpLbl() {
        lbl.layer.cornerRadius = 5
        lbl.layer.borderColor = UIColor(white: 1, alpha: 0.12).cgColor
        lbl.layer.borderWidth = 1.0
    }



}

