//
//  ViewController.swift
//  GachaTech
//
//  Created by 丸井一輝 on 2021/05/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let gachaSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "don")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil)
    }
   
    @IBAction func tapGachaButton(){
        gachaSoundPlayer.currentTime = 0
        gachaSoundPlayer.play()
    }

}

