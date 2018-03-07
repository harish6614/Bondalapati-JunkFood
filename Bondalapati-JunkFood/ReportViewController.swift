//
//  ReportViewController.swift
//  Bondalapati-JunkFood
//
//  Created by Harish on 3/7/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {
    
    @IBOutlet weak var reportTV: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.food.loadData()
        reportTV.text = AppDelegate.food.combinedReport()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func resetACT(_ sender: Any) {
        AppDelegate.food.reset()
        reportTV.text = AppDelegate.food.combinedReport()        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
