//
//  Entity1.swift
//  Entity Model
//
//  Created by Aditya Patriazka on 15/05/19.
//  Copyright © 2019 Aditya Patriazka. All rights reserved.
//

import Foundation

class CoffeeMachine : machine {
    let brand: String
    var numberOfBean: Int = 100
    var numberOfMilk: Int
    
    init(milk: Int, brand: String) {
        numberOfMilk = milk
        self.brand = brand
    }
    
    func addMilk(milk: Int) {
        numberOfMilk = numberOfMilk + milk
    }

    func addBeans(beans: Int) {
        numberOfBean = numberOfBean + beans
    }
    
    func makeCoffee() {
        numberOfBean = numberOfBean - 2
        numberOfMilk = numberOfMilk - 1
    }
}
