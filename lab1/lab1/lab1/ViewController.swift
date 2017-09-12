//
//  ViewController.swift
//  lab1
//
//  Created by Zoey Lee Johnston on 9/11/17.
//  Copyright © 2017 Zoey Lee Johnston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var artTitle: UILabel!
    
    
    @IBAction func artChoice(_ sender: UIButton) {
        if sender.tag == 1 {
            artImage.image=UIImage(named: "color3")
            
            artTitle.text="Color Influences"
        }
        else if sender.tag == 2 {
            artImage.image=UIImage(named: "black1")
            
            artTitle.text="B&W Influences"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

