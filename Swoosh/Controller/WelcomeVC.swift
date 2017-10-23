//
//  ViewController.swift
//  Swoosh
//
//  Created by MAXIMILLIAN on 10/6/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var bgimg: UIImageView!
    @IBOutlet weak var swooshlogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackButton(segue: UIStoryboardSegue) {
        
    }


}

