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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("Entered prepare for New Item \(segue.identifier)")
    }
   

}
