//
//  ViewController.swift
//  Egg Timer
//
//  Created by Antti Karvanen on 12/11/16.
//  Copyright © 2016 Antti Karvanen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    
    @IBAction func pauseButton(_ sender: Any) {
//        timeLabel.text = "211"
//        print("Test!")
        timer.invalidate()
    }

    @IBAction func playButton(_ sender: Any) {
//        print("Test!")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeTic), userInfo: nil, repeats: true)
    }
    
    @IBAction func decreaseButton(_ sender: Any) {
        print("Test!")
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        print("Test!")
    }
    
    @IBAction func increaseButton(_ sender: Any) {
        print("Test!")
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    func timeTic() {
        if time > 0 {
            time = time - 1
        }
        print("Timertic!")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

