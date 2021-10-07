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
    var toppings : [String] = []
    var price : Double = 8
    
    

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
    
    
    @IBAction func onions(_ sender: UIButton) {
        toppings.append("onions")
        price += 0.25
    }
    @IBAction func lettuce(_ sender: UIButton) {
        toppings.append("lettuce")
        price += 0.25
    }
    @IBAction func tomatoes(_ sender: UIButton) {
        toppings.append("tomatoes")
        price += 0.25
    }
    @IBAction func pickles(_ sender: UIButton) {
        toppings.append("pickles")
        price += 0.25
    }
    @IBAction func bacon(_ sender: UIButton) {
        toppings.append("bacon")
        price += 0.25
    }
    @IBAction func ketchup(_ sender: UIButton) {
        toppings.append("ketchup")
        price += 0.25
    }
    @IBAction func mustard(_ sender: UIButton) {
        toppings.append("mustard")
        price += 0.25
    }
    @IBAction func mayo(_ sender: UIButton) {
        toppings.append("mayo")
        price += 0.25
    }
    @IBAction func cheese(_ sender: UIButton) {
        toppings.append("cheese")
        price += 0.25
    }
    @IBAction func blueCheese(_ sender: UIButton) {
        toppings.append("blue cheese")
        price += 0.25
    }
    @IBAction func garlic(_ sender: UIButton) {
        toppings.append("garlic")
        price += 0.25
    }
    @IBAction func jalapenos(_ sender: UIButton) {
        toppings.append("jalapenos")
        price += 0.25
    }
    @IBAction func avocados(_ sender: UIButton) {
        toppings.append("avocados")
        price += 0.25
    }
    @IBAction func peppers(_ sender: UIButton) {
        toppings.append("peppers")
        price += 0.25
    }
    @IBAction func mushrooms(_ sender: UIButton) {
        toppings.append("mushrooms")
        price += 0.25
    }
    
    
    @IBAction func clickToAddButtonAction(_ sender: UIButton) {
        var b = Burger(t: type, c: cooked, top: toppings, p: price)
        print ("\(b)")
    }
    
}

