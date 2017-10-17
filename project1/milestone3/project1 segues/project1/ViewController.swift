//
//  ViewController.swift
//  project1
//
//  Created by Zoey Johnston on 10/2/17.
//  Copyright © 2017 Zoey Johnston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepOneControl: UISegmentedControl!
    @IBOutlet weak var stepOneImage: UIImageView!
    @IBOutlet weak var stepTwoSwitch: UISwitch!
    @IBOutlet weak var stepTwoImage: UIImageView!
    @IBOutlet weak var stepThreeControl: UISegmentedControl!
    @IBOutlet weak var stepThreeImage: UIImageView!
    @IBOutlet weak var stepFourSwitch: UISwitch!
    @IBOutlet weak var stepFourImage: UIImageView!
    
    
    //////step one////
    func updateImageone(){
        if stepOneControl.selectedSegmentIndex == 0 {
            stepOneImage.image=UIImage(named: "manorginalimage")
        }
        else if stepOneControl.selectedSegmentIndex == 1 {
            stepOneImage.image=UIImage(named: "treeorginalimage")
        }
    }
    
    @IBAction func updateOne(_ sender: Any) {
        updateImageone()
    }
    
    
    /////step two////
    func updateImageTwo(){
        if stepTwoSwitch.isOn{
            stepTwoImage.image=UIImage(named: "overlayimage")
        }
        else{
            stepTwoImage.image=UIImage(named: "manorginalimage")
        }
    }
    
    @IBAction func updateTwo(_ sender: UISwitch) {
        updateImageTwo()
    }
    
    ////step three////
    func updateImageThree(){
        if stepThreeControl.selectedSegmentIndex == 0{
            stepThreeImage.image=UIImage(named: "overlayimage")
        }
        else if stepThreeControl.selectedSegmentIndex == 1{
            stepThreeImage.image=UIImage(named: "blendingimage")
        }
    }
    
    @IBAction func updateThree(_ sender: UISegmentedControl) {
        updateImageThree()
    }
    
    ////step four////
    func updateImageFour(){
        if stepFourSwitch.isOn{
            stepFourImage.image=UIImage(named: "erasingimagetwo")
        }
        else{
            stepFourImage.image=UIImage(named: "erasingimageone")
        }
    }
    
    @IBAction func updateFour(_ sender: UISwitch) {
        updateImageFour()
    }
    
    
    ///////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

