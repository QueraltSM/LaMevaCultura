//
//  ViewController.swift
//  LaMevaCultura
//
//  Created by Queralt Sosa Mompel on 13/6/17.
//  Copyright © 2017 Queralt Sosa Mompel. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var counter = 0
    var timer = Timer()
    
    func timerAction() {
        counter += 1
        if (counter == 8) {
            if let storyboard = self.storyboard {
                let nextViewController = storyboard.instantiateViewController(withIdentifier: "Menu")
                self.present(nextViewController, animated:true, completion:nil)
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

