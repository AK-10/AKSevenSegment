//
//  ViewController.swift
//  SevenSegmentView
//
//  Created by Atsushi KONISHI on 2018/08/30.
//  Copyright © 2018年 小西篤志. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test7Seg: SevenSegmentView!
    
    override func viewDidLoad() {
        test7Seg.num = 0
        test7Seg.color = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zero(_ sender: Any) {
        test7Seg.num = 0
    }
    
    @IBAction func one(_ sender: Any) {
        test7Seg.num = 1
    }

    @IBAction func two(_ sender: Any) {
        test7Seg.num = 2
    }
    
    
    @IBAction func three(_ sender: Any) {
        test7Seg.num = 3
    }
    
    @IBAction func four(_ sender: Any) {
        test7Seg.num = 4
    }
    
    
    @IBAction func five(_ sender: Any) {
        test7Seg.num = 5
    }
    
    @IBAction func six(_ sender: Any) {
        test7Seg.num = 6
    }
    
    @IBAction func seven(_ sender: Any) {
        test7Seg.num = 7
    }
    
    @IBAction func eight(_ sender: Any) {
        test7Seg.num = 8
    }
    
    
}
