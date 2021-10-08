//
//  SecondViewController.swift
//  Burger
//
//  Created by Ella Madalinski on 10/7/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textViewOutlet: UITextView!
    var incoming : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewOutlet.text = incoming
        // Do any additional setup after loading the view.
    }
    
        
    
}
