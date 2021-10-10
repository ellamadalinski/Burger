//
//  Burger.swift
//  Burger
//
//  Created by Ella Madalinski on 10/6/21.
//

import Foundation
import UIKit


enum burgerTypes{
    case chicago, atlanta, hawaiian, wisconsin
}
enum burgerCooked{
    case rare, medium, mediumWell, well
}


public class Burger{
    
    var type : burgerTypes
    var cooked : burgerCooked
    var toppings : [String] = []
    var on = ""
    var price = 0.0
    
    
    init(t : Int, c : Int, top : [String], p : Double){
        switch t {
        case 0:
            type = .chicago
        case 1:
            type = .atlanta
        case 2:
            type = .hawaiian
        case 3:
            type = .wisconsin
        default:
            type = .chicago
        }
        
        switch c {
        case 0:
            cooked = .rare
        case 1:
            cooked = .medium
        case 2:
            cooked = .mediumWell
        case 3:
            cooked = .well
        default:
            cooked = .medium
        }
        
        toppings = top
        price = p
    }
    
    
    func toString()-> String{
        for t in toppings{
            if(toppings[0] == t)
            {
                on += "\(t)"
            }
            else{
                on += ", \(t)"
            }
        }
        if(cooked == .mediumWell){
            return "$\(price): \(type) burger cooked medium well with \(on)"
        }
        else{
            return "$\(price): \(type) burger cooked \(cooked) with \(on)"
        }
    }
    
    
    
    
}


