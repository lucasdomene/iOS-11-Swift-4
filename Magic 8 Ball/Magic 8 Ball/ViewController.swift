//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Lucas Domene Firmo on 30/11/17.
//  Copyright © 2017 Lucas Domene Firmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var imageView: UIImageView!
    
    let balls = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    // MARK: - Actions
    
    @IBAction func askButtonPressed() {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    // MARK: - Randomization
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = balls[randomBallNumber]
    }
    
}

