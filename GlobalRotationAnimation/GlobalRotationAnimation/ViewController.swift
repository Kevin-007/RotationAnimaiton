//
//  ViewController.swift
//  GlobalRotationAnimation
//
//  Created by Gavin Huang on 2018/3/18.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:Vars
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
   
    
    //Mark:- Event
    @IBAction func startDidPressed(_ sender: Any) {
        label.startRotationAnimation()
        button.startRotationAnimation()
        imageView.startRotationAnimation()
    }
    
    @IBAction func stopDidPressed(_ sender: Any) {
        label.stopRotationAnimation()
        button.stopRotationAnimation()
        imageView.stopRotationAnimation()
        
    }
    
}

