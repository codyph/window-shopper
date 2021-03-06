//
//  ViewController.swift
//  window-shopper
//
//  Created by Bailey Aldridge on 13/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    // Outlets
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
        let calcBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6484236862, blue: 0.2012576967, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcBtn
        priceText.inputAccessoryView = calcBtn
    }
    
    @objc func calculate() {
        if let wageTxt = wageText.text, let priceTxt = priceText.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    // Actions
    @IBAction func clearCalcTapped(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
    


}

