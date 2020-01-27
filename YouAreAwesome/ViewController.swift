//
//  ViewController.swift
//  WeekOne
//
//  Created by Chris Ware on 1/13/20.
//  Copyright © 2020 Chris Ware. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "When the Genious Bar Needs Help, They Call You!", "Fabulous? That's You!"]
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in:0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(newImageNumber)")
    }
}

