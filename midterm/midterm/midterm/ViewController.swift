//
//  ViewController.swift
//  midterm
//
//  Created by Zoey Johnston on 10/19/17.
//  Copyright © 2017 Zoey Johnston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var milesText: UITextField!
    @IBOutlet weak var monthySwitch: UISwitch!
    @IBOutlet weak var gasSlider: UISlider!
    @IBOutlet weak var gallonsLabel: UILabel!
    @IBOutlet weak var carControl: UISegmentedControl!
    @IBOutlet weak var commuteButton: UIButton!
    @IBOutlet weak var totalTime: UILabel!
    @IBOutlet weak var finalGas: UILabel!
    @IBOutlet weak var typeImage: UIImageView!
    @IBOutlet weak var minsLabel: UILabel!
    
    ////text field go down
    //func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        //textField.resignFirstResponder()
      //  return true
   // }
    
    ///trial two at the keyboard
    
    /////doing all the image stuff
    func updateImage(){
        if carControl.selectedSegmentIndex == 0{
            typeImage.image=UIImage(named: "carImage")
        }else if carControl.selectedSegmentIndex == 1{
            typeImage.image=UIImage(named: "busImage")
        }else if carControl.selectedSegmentIndex == 2{
            typeImage.image=UIImage(named: "bikeImage")
        }
    }
    
    @IBAction func changeImage(_ sender: Any) {
        updateImage()
    }
    
    /////doing the slider
    @IBAction func changeGas(_ sender: UISlider) {
        let gallonValue=sender.value
        gallonsLabel.text=String(format: "%.0f", gallonValue)
        //let gallonValueCGFloat=CGFloat(gallonValue)
        //gallonsLabel.font=UIFont.systemFont(ofSize: gallonValueCGFloat)
        
    
    }
    ////the calculations (not right but shows point)
    func commuteTime(){
        var miles:Float
        
        if milesText.text!.isEmpty{
            miles = 0.0
        }else {
            miles = Float(milesText.text!)!
        }
    
    
    //let averageSpeed = 20
    ///let milesGallon = 24
    
    let commuteTime=miles * (1/20)
    let gasPurchase = miles * 20
    
    totalTime.text=String(format: "%.0f", commuteTime)
    finalGas.text=String(format: "%.0f", gasPurchase)
    
        
    }
    //dont delete connection
    @IBAction func changeMonth(_ sender: UISwitch) {
       // minsLabel.text=("hours")
        updateMonth()
    }
    
    func updateMonth(){
        if monthySwitch.isOn{
            minsLabel.text="hours"
        }else{
            minsLabel.text="mins"
        }
    }
    
    
    
    @IBAction func updateInfo(_ sender: Any) {
        commuteTime()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

