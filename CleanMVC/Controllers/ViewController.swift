//
//  ViewController.swift
//  CleanMVC
//
//  Created by Вячеслав Квашнин on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var someBlock: (() -> String)?
    
    var secondBlock: ((String) -> Void)?
    
    var calculate: ((_ first: Int, _ second: Int) -> Int)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        someBlock = {
           "Hello"
        }
        
        secondBlock = { str in
            print(str)
        }
        sayHello(name: "Slava")
        
        calculate = { first, second in
            return first + second
        }
    }
    
    
    func sayHello(name: String) {
        someBlock = {
            return "Hello"
        }
        secondBlock?(name)
        calculate?(2, 3)
    }
}

