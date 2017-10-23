//
//  LeagueVC.swift
//  Swoosh
//
//  Created by MAXIMILLIAN on 10/8/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var play: Play!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        play = Play()
    }
    
    @IBAction func BackToLeagueVCButton(BackToLeagueVCsegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func OnNextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "StyleVC", sender: self)
        
    }
    
    @IBAction func OnMenTap(_ sender: Any) {
        selectedLeague(leagueType: "men")
        
    }
    
    @IBAction func OnWomenTap(_ sender: Any) {
         selectedLeague(leagueType: "women")
    }
    
    @IBAction func OnCoedTap(_ sender: Any) {
         selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague(leagueType:String) {
        play.VcLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let StyleVC = segue.destination as? StyleVC {
            StyleVC.play = play
        }
    }
    
    /*
    // MAX: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
