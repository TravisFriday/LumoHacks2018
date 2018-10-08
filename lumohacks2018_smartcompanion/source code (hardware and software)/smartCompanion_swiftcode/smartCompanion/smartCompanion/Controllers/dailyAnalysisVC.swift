//
//  analysisVC1.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-15.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import UIKit

class dailyAnalysisVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Summary View Controller Will Appear") // for diagnostics
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("Summary View Controller Will Disappear") // for diagnostics
    }
    
    @IBAction func unwindFromWeeklyVC(unwindSegue: UIStoryboardSegue)
    {
        
    }
}
