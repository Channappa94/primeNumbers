//
//  ViewController.swift
//  primeNumbers
//
//  Created by IMCS2 on 7/12/19.
//  Copyright © 2019 com.phani. All rights reserved.
//**Cheking of the number is Prime or not**

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myNumber: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myNumber.delegate = self
   
    }
    @IBAction func myButton(_ sender: Any) {
        //Getting value from the
        let number = myNumber.text
        let num = Int(number!)!//Converting string to Int
        var count = 0
        if (num < 2){
            myOutput.text = "Number is invalid"
        }else{
        for n in 1...num{//Creatig a for loop from 1 till number.
            if(num % n == 0){//Checking if the number is divisible and remainder is 0
                count += 1
            }
        }
        if (count == 2){//if the count is equal to 2 then we say that it is prime number
            myOutput.text = "Number is prime"
        }else {
            myOutput.text = "Number is not prime"
        }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//When toucged on the screen the keyboard will toggle
        self.view.endEditing(true)
    }
    //If the user presses the return key in the keyboard it will toggle the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }

}

