//
//  homePageVC.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-15.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import UIKit

class homePageVC: UIViewController {
    var currentSettings:Settings!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindFromSettings(unwindSegue: UIStoryboardSegue)
    {
    
    }
    
    @IBAction func unwindFromCheckIn(unwindSegue: UIStoryboardSegue)
    {
        
    }
    
    @IBAction func unwindFromDailyVC(unwindSegue: UIStoryboardSegue)
    {
        
    }
}
