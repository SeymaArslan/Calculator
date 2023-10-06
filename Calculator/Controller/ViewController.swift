//
//  ViewController.swift
//  Calculator
//
//  Created by Seyma on 5.10.2023.
//

import UIKit

class ViewController: UIViewController {

    // Outlet
    @IBOutlet weak var displayLabel: UILabel!
    
    
    // Vars
    private var isFinishedTypingNumber: Bool = true // burada değişkenimizi private yaptık böylelikle bu değişken artık mevcut kapsamı için (dahil olduğu küme parantezleri arasında erişilebilir.) private oldu.
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot converrt display label texxt to a Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    

    // lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private var calculator = CalculatorLogic()
    
    // IBActions
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        calculator.setNumber(displayValue)
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
        }

    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle { // currentTitle buton da görüntülenen geçerli başlık
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue // floor aşağı yuvarlama ve eşitleme sebebimiz 0.8 değerini yuvarlamak 1 mi? False döner ve isInt false olur. Ancak 8 girseydik yuvarlak hali de zaten 8 olurdu yani isInt true dönerdi bu da elimizde bir tamsayı olup olmadığını kontrol edebileceğimiz anlamına gelir.
                    if !isInt {
                        return  // isInt false ise mevcut numValue değerini eklemeye devam etmeyeceğimiz anlamına gelir. 
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
    
    
}

