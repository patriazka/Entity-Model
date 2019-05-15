//
//  ViewController.swift
//  Entity Model
//
//  Created by Aditya Patriazka on 15/05/19.
//  Copyright © 2019 Aditya Patriazka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    var coffeeMachine: CoffeeMachine!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coffeeMachine = CoffeeMachine(milk: 200, brand: "Ristretto")
        print("jumlah beans: \(coffeeMachine.numberOfBean), jumlah  milk: \(coffeeMachine.numberOfMilk)")
        
    }

    @IBAction func addCoffee(_ sender: Any) {
        coffeeMachine.addBeans(beans: 100)
        updateLabel()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk(milk: 20)
        updateLabel()
    }
    
    
    @IBAction func makeCoffee(_ sender: Any) {
        coffeeMachine.makeCoffee()
        updateLabel()
    }
    
    func updateLabel() {
        coffeeLabel.text = String(coffeeMachine.numberOfBean)
        milkLabel.text = String(coffeeMachine.numberOfMilk)
    }
}

