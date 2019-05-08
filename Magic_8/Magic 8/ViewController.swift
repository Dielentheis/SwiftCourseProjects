//
//  ViewController.swift
//  Magic 8
//
//  Created by Elizabeth Dielentheis on 5/8/19.
//  Copyright © 2019 Elizabeth Dielentheis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    var randomImgNumber : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseAndSetRandomBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        chooseAndSetRandomBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        chooseAndSetRandomBallImage()
    }
    
    func chooseAndSetRandomBallImage() {
        randomImgNumber = Int.random(in: 1 ... 5)
        ballImage.image = UIImage(named: "ball\(randomImgNumber)")
    }
}

