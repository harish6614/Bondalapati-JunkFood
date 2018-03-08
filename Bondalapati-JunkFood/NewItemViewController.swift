//
//  NewItemViewController.swift
//  Bondalapati-JunkFood
//
//  Created by Harish on 3/7/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLBL.text = ""
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var errorLBL: UILabel!
    @IBOutlet weak var itemNameTF: UITextField!
    @IBOutlet weak var caloriesTF: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("Entered prepare for New Item \(segue.identifier)")
        print(itemNameTF.text,caloriesTF.text)
        if let id = segue.identifier {
            if id == "addNewItem" {
                if (itemNameTF.text != nil || itemNameTF.text != "") && (caloriesTF.text != nil && caloriesTF.text != "") {
                    AppDelegate.food.addNewItem(name: itemNameTF.text!, calories: Double(caloriesTF.text!)!)
                }
            } else if id == "cancelNewItem" {
                
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "addNewItem" {
            if (itemNameTF.text != nil || itemNameTF.text != "") && (caloriesTF.text != nil && caloriesTF.text != "") {
                return true
            }else {
                errorLBL.text = "Missing data, please fill all fields."
                return false
            }
        }
        return true
    }
   

}
