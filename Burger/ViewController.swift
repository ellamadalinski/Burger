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
    var order : [Burger] = []
    var orderString = ""
    
    
    @IBOutlet weak var onionsOutlet: UIButton!
    @IBOutlet weak var lettuceOutlet: UIButton!
    @IBOutlet weak var tomatoesOutlet: UIButton!
    @IBOutlet weak var picklesOutlet: UIButton!
    @IBOutlet weak var baconOutlet: UIButton!
    @IBOutlet weak var ketchupOutlet: UIButton!
    @IBOutlet weak var mustardOutlet: UIButton!
    @IBOutlet weak var mayoOutlet: UIButton!
    @IBOutlet weak var cheeseOutlet: UIButton!
    @IBOutlet weak var blueCheeseOutlet: UIButton!
    @IBOutlet weak var garlicOutlet: UIButton!
    @IBOutlet weak var jalapenosOutlet: UIButton!
    @IBOutlet weak var avocadosOutlet: UIButton!
    @IBOutlet weak var peppersOutlet: UIButton!
    @IBOutlet weak var mushroomsOutlet: UIButton!
    
    
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
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func lettuce(_ sender: UIButton) {
        toppings.append("lettuce")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func tomatoes(_ sender: UIButton) {
        toppings.append("tomatoes")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func pickles(_ sender: UIButton) {
        toppings.append("pickles")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func bacon(_ sender: UIButton) {
        toppings.append("bacon")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func ketchup(_ sender: UIButton) {
        toppings.append("ketchup")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func mustard(_ sender: UIButton) {
        toppings.append("mustard")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func mayo(_ sender: UIButton) {
        toppings.append("mayo")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func cheese(_ sender: UIButton) {
        toppings.append("cheese")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func blueCheese(_ sender: UIButton) {
        toppings.append("blue cheese")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func garlic(_ sender: UIButton) {
        toppings.append("garlic")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func jalapenos(_ sender: UIButton) {
        toppings.append("jalapenos")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func avocados(_ sender: UIButton) {
        toppings.append("avocados")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func peppers(_ sender: UIButton) {
        toppings.append("peppers")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    @IBAction func mushrooms(_ sender: UIButton) {
        toppings.append("mushrooms")
        price += 0.25
        sender.backgroundColor = UIColor.gray
    }
    
    
    @IBAction func clickToAddButtonAction(_ sender: UIButton) {
        var b = Burger(t: type, c: cooked, top: toppings, p: price)
        order.append(b)
        orderString += "\(b.toString())\n"
        toppings = []
        onionsOutlet.backgroundColor = UIColor.lightGray
        lettuceOutlet.backgroundColor = UIColor.lightGray
        tomatoesOutlet.backgroundColor = UIColor.lightGray
        picklesOutlet.backgroundColor = UIColor.lightGray
        baconOutlet.backgroundColor = UIColor.lightGray
        ketchupOutlet.backgroundColor = UIColor.lightGray
        mustardOutlet.backgroundColor = UIColor.lightGray
        mayoOutlet.backgroundColor = UIColor.lightGray
        cheeseOutlet.backgroundColor = UIColor.lightGray
        blueCheeseOutlet.backgroundColor = UIColor.lightGray
        garlicOutlet.backgroundColor = UIColor.lightGray
        jalapenosOutlet.backgroundColor = UIColor.lightGray
        avocadosOutlet.backgroundColor = UIColor.lightGray
        peppersOutlet.backgroundColor = UIColor.lightGray
        mushroomsOutlet.backgroundColor = UIColor.lightGray
        price = 8
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        nvc.incoming = orderString
    }
    
}

