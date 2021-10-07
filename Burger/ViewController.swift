//
//  ViewController.swift
//  Burger
//
//  Created by ELLA MADALINSKI on 9/30/21.
//

import UIKit

class ViewController: UIViewController {
    var type = 0
    var cooked = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func typeSegControl(_ sender: UISegmentedControl) {
        type = sender.selectedSegmentIndex
        
        
        
    }
    
    
    @IBAction func cookedSegControl(_ sender: UISegmentedControl) {
        cooked = sender.selectedSegmentIndex
        
        
    }
    
    func getType()->Int{
        return type
    }
    func getCooked()->Int{
        return cooked
    }
    
}

