//
//  ViewController.swift
//  primeNumbers
//
//  Created by IMCS2 on 7/12/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myNumber: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    
    
    @IBAction func myButton(_ sender: Any) {
        let number = myNumber.text
        let num = Int(number!)!
        let x = num
        if(x==2){
            myOutput.text = "prime"

        }

        for n in 2...num{
            if (num % n == 0) || (num == 9){

                myOutput.text = "not prime"
                break
            
            }else{
                
                myOutput.text = "prime"
                break
                }
            
        
        
        
        }
    
    
    
    }


}
