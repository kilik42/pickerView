//
//  ViewController.swift
//  pickerView
//
//  Created by marvin evins on 11/19/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var bikes : [String] = ["street boby", "Street 769", "fat bob", "iron 883"]
    
    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bikes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let myBike = bikes[row]
        print(myBike)
        label.text = "\(myBike)"
        return myBike
        
    }
    
   

}

