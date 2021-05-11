//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 丸井一輝 on 2021/05/11.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {
    
    @IBOutlet var haikeiImageView: UIImageView!
    
    @IBOutlet var monsterImageView: UIImageView!
    
    @IBOutlet var monsterName: UILabel!
    
    var monsterArray: [UIImage]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0..<9)
        
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!,]
            
        let monsterNameArray: [String] = ["Neko", "Sakana", "Mushi", "Yousei", "Kishi", "Ryuu", "Mahou", "Kindra", "Roki", "Saikyo"]
            
        monsterImageView.image = monsterArray[number]
        monsterName.text = monsterNameArray[number]
            

        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 5{
            haikeiImageView.image = UIImage(named: "bg_red.png")
        } else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
            }
            
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(value: 0)
        
        animation.toValue = NSNumber(value: 2 * Double.pi)
        
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        animation.duration = 2
        
        animation.repeatCount = 0.5
        
        haikeiImageView.layer.add(animation, forKey: nil)
        
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        animation.duration = 0.125
        
        animation.repeatCount = 8
        
        monsterImageView.layer.add(animation, forKey: nil)
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
