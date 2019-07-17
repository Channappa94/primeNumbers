//
//  ViewController.swift
//  primeNumbers
//
//  Created by IMCS2 on 7/12/19.
//  Copyright © 2019 com.phani. All rights reserved.
//**Cheking of the number is Prime or not**

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myNumber: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @IBAction func myButton(_ sender: Any) {
        //Getting value from the
        let number = myNumber.text
        let num = Int(number!)!//Converting string to Int
        var count = 0
        for n in 1...num{//Creatig a for loop from 1 till number.
            if(num % n == 0){//Checking if the number is divisible and remainder is 0
                count += 1
            }
        }
        if (count == 2){//if the count is equal to 2 then we say that it is prime number
            myOutput.text = "number is prime"
        }else {
            myOutput.text = "number is not prime"
        }
    }

}

