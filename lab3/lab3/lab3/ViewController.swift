//
//  ViewController.swift
//  lab3
//
//  Created by Zoey Johnston on 9/26/17.
//  Copyright © 2017 Zoey Johnston. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var ageAmount: UITextField!
    @IBOutlet weak var weightAmount: UITextField!
    @IBOutlet weak var heightAmount: UITextField!
    @IBOutlet weak var bmiAmount: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateBMIamount(){
//        var age : Float
        var weight:Float
        var height:Float
        
//        if ageAmount.text!.isEmpty{
//            age = 0.0
//        } else {
//            age = Float(ageAmount.text!)!
 //       }
        
        if weightAmount.text!.isEmpty{
            weight = 0.0
        } else {
            weight = Float(weightAmount.text!)!
        }
        
        if heightAmount.text!.isEmpty{
            height = 0.0
        } else {
            height = Float(heightAmount.text!)!
        }
    
    let bmi=((height*704.7)/(weight*weight))
    if height != 0 {
    if (height > 0.0 && weight > 0.0) {

    } else{
        let alert=UIAlertController(title: "Warning", message: "The number of people must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
        //create a UIAlertAction object for the button
        let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(cancelAction) //adds the alert action to the alert object
        let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
            self.bmiAmount.text="1"
            self.updateBMIamount()
        })
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        } //end else
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

