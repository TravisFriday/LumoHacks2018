//
//  anaylsisMainVC.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-15.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import UIKit

class anaylsisMainVC: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupView() {
        setupSegmentedControl()
        updateView()
    }
    
    private func setupSegmentedControl() -> Void{
        // config the segmented control
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "Daily", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Weekly", at: 1, animated: false)
        
        // select the first segment
        segmentedControl.selectedSegmentIndex = 0
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        view.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
    func selectionDidChange(_ sender: UISegmentedControl) -> Void{
        updateView()
    }
    
    private func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: dailyAnVC)
            add(asChildViewController: weeklyAnVC)
        } else {
            remove(asChildViewController: weeklyAnVC)
            add(asChildViewController: dailyAnVC)
        }
    }
    
    private lazy var dailyAnVC: dailyAnalysisVC = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "dailyAnalysisVC") as! dailyAnalysisVC
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var weeklyAnVC: weeklyAnalysisVC = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "weeklyAnalysisVC") as! weeklyAnalysisVC
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    

}
