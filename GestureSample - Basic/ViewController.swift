//
//  ViewController.swift
//  GestureSample - Basic
//
//  Created by Hiromasa Nagamine on 2/1/15.
//  Copyright (c) 2015 hiro nagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var smallView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        smallView = UIView(frame: CGRectMake(100, 100, 150, 150))
        smallView.backgroundColor = .blueColor()
        
        var tapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("tapAction"))
        smallView.addGestureRecognizer(tapGestureRecognizer)
        
        self.view .addSubview(smallView)
    }

    func tapAction() {
        if smallView.backgroundColor == .blueColor() {
            smallView.backgroundColor = .redColor()
        } else {
            smallView.backgroundColor = .blueColor()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

