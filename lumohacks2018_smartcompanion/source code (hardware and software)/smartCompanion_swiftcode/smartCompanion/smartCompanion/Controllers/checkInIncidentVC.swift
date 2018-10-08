//
//  qstnPage1.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-15.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import UIKit

class checkInIncidentVC: UIViewController {
    var user: theUser!
    @IBOutlet weak var q1Slider: UISlider!
    @IBOutlet weak var q2Slider: UISlider!
    @IBOutlet weak var q1Label: UILabel!
    @IBOutlet weak var q2Label: UILabel!
    @IBOutlet weak var q3Label: UILabel!
    @IBOutlet weak var q4Label: UILabel!
    @IBOutlet weak var q4Answer: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // make func
        setupViewAndUser()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Q1SliderMoved(_ sender: Any) {
        // increase accessCounter
        user.setAns(atIndex: 0, withValue: String(Int(q1Slider.value*100)))
    }
    
    @IBAction func Q2SliderMoved(_ sender: Any) {
        // increase accessCounter
        user.setAns(atIndex: 0, withValue: String(Int(q1Slider.value*100)))
    }
    
    @IBAction func yesBtnPressed(_ sender: Any) {
        // set q3 to yes
        user.setAns(atIndex: 0, withValue: "Yes")
        
    }
    
    @IBAction func noBtnPressed(_ sender: Any) {
        // set q3 to no
        user.setAns(atIndex: 0, withValue: "No")

    }
    func setupViewAndUser()
    {
        let Q = Questionnaire.init()
        var questions:Array<Question> = []
        // get questions from questionnaire
        for i in 1...4
        {
            let q:Question = Q.generateQuestion(q: i)
            questions.append(q)
            if(i == 1)
            {
                q1Label.text = q.qstn
                q1Label.font = q1Label.font.withSize(13)
            }else if(i==2)
            {
                q2Label.text = q.qstn
                q2Label.font = q2Label.font.withSize(13)
            }else if(i==3)
            {
                q3Label.text = q.qstn
                q3Label.font = q3Label.font.withSize(13)
            }else if(i==4)
            {
                q4Label.text = q.qstn
                q4Label.font = q4Label.font.withSize(13)
            }
        }
        user = theUser(id: "091fja0x0091", _questions: questions)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
}
