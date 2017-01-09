//
//  ViewController.swift
//  Tip Calculator
//
//  Created by asmajeed on 10/3/16.
//  Copyright © 2016 Amer. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var billTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyFiveButton: UIButton!
    @IBOutlet weak var numberOfPeople: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButtonTap(_ sender: AnyObject)
    {
        calculateTip(0.15)
        fifteenButton.setImage(UIImage(named: "15Unselected"), for: UIControlState())
    }

    @IBAction func twentyButtonTapped(_ sender: AnyObject)
    {
        calculateTip(0.2)
        twentyButton.setImage(UIImage(named: "20Unselected"), for: UIControlState())
    }
    
    func calculateTip(_ tipPercent: Double)
    {
        let billFloatAmount = Double(billTextField.text!)
        let myTip = billFloatAmount! * tipPercent
        tipAmountLabel.text = String(format: "$%.2f", myTip)
        let myBillTotal = billFloatAmount! + myTip
        totalAmountLabel.text = String(format: "$%.2f", myBillTotal)
        billTextField.resignFirstResponder()
        clearimages()
    }
    
    @IBAction func tenButtonTapped(_ sender: AnyObject)
    {
        calculateTip(0.1)
        tenButton.setImage(UIImage(named: "10Unselected"), for: UIControlState())
    }
    
    @IBAction func twentyFiveButtonTapped(_ sender: AnyObject)
    {
        calculateTip(0.25)
        twentyFiveButton.setImage(UIImage(named: "25Unselected"), for: UIControlState())
    }
    
    
    func clearimages()
    {
        twentyButton.setImage(UIImage(named: "20Unselected"), for: UIControlState())
        fifteenButton.setImage(UIImage(named: "15Unselected"), for: UIControlState())
        tenButton.setImage(UIImage(named: "10Unselected"), for: UIControlState())
        twentyFiveButton.setImage(UIImage(named: "25Unselected"), for: UIControlState())
        
    }
    
    
    
    @IBAction func addNumberOfPeople(_ sender: AnyObject)
    {
        numberOfPeople.text = "2"
        _ = "numberOfPeople" + "2"
        

        
    }
    
    @IBAction func subNumberOfPeople(_ sender: AnyObject)
    {
        numberOfPeople.text = "1"
        _ = "numberOfPeople" + "1"
    }
    
    


}

