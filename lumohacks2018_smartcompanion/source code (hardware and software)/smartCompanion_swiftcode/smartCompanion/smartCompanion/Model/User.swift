//
//  User.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-16.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import Foundation

class statisticalData{
    var hbmData:Array<Int> = [] // heart-beat per minute data
    var Score:Int?
    init(hbmdata:Array<Int>, score:Int?)
    {
        hbmData = hbmdata
        Score = score
    }
}


class Settings{
    var morningTime = Date()
    var eveningTime = Date()
    var activitiesList:Array<String> = []
    
    init(_morningTime:Date, _eveningTime:Date, _activitiesList:Array<String>?)
    {
        morningTime=_morningTime
        eveningTime=_eveningTime
        activitiesList = _activitiesList!
    }
    
    func getDate() -> (_morning:Date, _evening:Date){
        return (morningTime, eveningTime)
        func setDate(_morningTime:Date, _eveningTime:Date) -> Void{
            morningTime=_morningTime
            eveningTime=_eveningTime
        }
    }
    
}

class theUser {
    var id:String?
    var questions:Array<Question>
    init(id:String? = nil, _questions:Array<Question>)
    {
        self.id = id // give some random id
        questions = _questions
    }
    func setAns(atIndex:Int, withValue:String)
    {
        questions[atIndex].ans = withValue
        print("Question: \(questions[atIndex].qstn!)")
        print("Ans: \(withValue)")
    }
    func getQstn(atIndex: Int) ->String
    {
        return questions[atIndex].qstn!
    }
    
}

struct Questionnaire {
    var q1Questions = ["How stressed are you now?","Are you currently stressed?"]
    var q2Questions = ["Do you feel low on energy today","Is your energy level up to par today?"]
    var q3Questions = ["Are you having trouble concentrating?","Are they any worries on your mind?"]
    var q4Questions = "Describe you day in 3 words:"
    func generateQuestion(q:Int) -> Question{
        let rndNumber = Int(arc4random_uniform(2))
        if(q == 1)
        {
            let qstn = Question(_type: "Stress",_ans: "",_qstn: q1Questions[rndNumber])
            return qstn
        }else if (q == 2)
        {
            let qstn = Question(_type: "Energy",_ans: "",_qstn: q2Questions[rndNumber])
            return qstn
        }else if (q == 3)
        {
            let qstn = Question(_type: "Concentration",_ans: "",_qstn: q3Questions[rndNumber])
            return qstn
        }
        else
        {
            let qstn = Question(_type: "Mood Indicator",_ans: "",_qstn: q4Questions)
            return qstn
        }
    }
}

struct Question{
    var type:String?
    var ans:String?
    var qstn:String?
    init(_type:String? = nil, _ans:String? = nil, _qstn:String? = nil) {
        self.ans = _ans
        self.qstn = _qstn
        self.type = _type
    }
}


