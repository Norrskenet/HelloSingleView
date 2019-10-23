//
//  ViewController.swift
//  HelloSingleView
//
//  Created by Rasmus Andersparr on 2019-10-23.
//  Copyright © 2019 Rasmus Andersparr. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionButtonClick(_ sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "Audio/AudioFile", withExtension: ".mp3"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch{
                print(error)
            }
            print("Hello World")
            audioPlayer.play()
        }
        else{
            print("unable to locate sound file")
        }
    }
    @IBOutlet weak var changeLabel: UILabel!
    
}


