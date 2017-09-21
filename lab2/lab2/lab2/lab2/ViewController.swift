//
//  ViewController.swift
//  lab2
//
//  Created by Zoey Johnston on 9/18/17.
//  Copyright © 2017 Zoey Johnston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moodImage: UIImageView!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text="How sad are you?"
            moodImage.image=UIImage(named: "badDay")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text="How happy are you?"
            moodImage.image=UIImage(named: "goodDay")
        }
        
    }
    
    func updateCaps(){
        if capitalSwitch.isOn{
            titleLabel.text=titleLabel.text?.uppercased()
        }
        else{
            titleLabel.text=titleLabel.text?.lowercased()
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
        
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

