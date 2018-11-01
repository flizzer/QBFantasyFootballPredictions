//
//  ViewController.swift
//  QBFantasyFootballPredictions
//
//  Created by Brian Davis on 10/30/18.
//  Copyright © 2018 Brian Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var predictionLabel: UILabel!
    @IBAction func predict(_ sender: Any) {
        predictQBFantasyPoints()
    }
    
    var model = QBModel()
    var qbGame = QBGame()
    func predictQBFantasyPoints() {
        do {
            let prediction = try model.prediction(
                G_: self.qbGame.gameNumber,
                Date: self.qbGame.date,
                Tm: self.qbGame.team,
                Opp: self.qbGame.opponent,
                Result: self.qbGame.result,
                Pos: self.qbGame.position,
                Ins_20_Pass_Cmp: self.qbGame.inside20PassCompletions,
                Ins_20_Pass_Att: self.qbGame.inside20PassAttempts,
                Ins_20_Pass_Yds: self.qbGame.inside20PassYards,
                Ins_20_Pass_TD: self.qbGame.inside20PassTouchdowns,
                Ins_20_Rush_Att: self.qbGame.inside20RushAttempts,
                Ins_20_Rush_Yds: self.qbGame.inside20RushYards,
                Ins_20_Rush_TD: self.qbGame.inside20RushTouchdowns,
                Ins_10_Pass_Cmp: self.qbGame.inside10PassCompletions,
                Ins_10_Pass_Att: self.qbGame.inside10PassAttempts,
                Ins_10_Pass_Yds: self.qbGame.inside10PassYards,
                Ins_10_Pass_TD: self.qbGame.inside10PassTouchdowns,
                Ins_10_Rush_Att: self.qbGame.inside10RushAttempts,
                Ins_10_Rush_Yds: self.qbGame.inside10RushYards,
                Ins_10_Rush_TD: self.qbGame.inside10RushTouchdowns,
                Off_Snap_Num: self.qbGame.offensiveSnapNumber,
                Def_Snap_Num: self.qbGame.defensiveSnapNumber,
                ST_Snap_Num: self.qbGame.specialTemsSnapNumber
            )
            
            let fantPt = prediction.FantPt
            self.predictionLabel.text = "\(fantPt)"
        }
        catch {
            print ("Error: inferring QB Fantasy Points")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

