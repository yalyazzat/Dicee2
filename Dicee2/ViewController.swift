//
//  ViewController.swift
//  Dicee2
//
//  Created by Ляззат Аманбаева on 20.10.2024.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
   
    @IBAction func rollDice(_ sender: Any) {
        let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        let dice1Index = Int.random(in: 0...5)
        var dice2Index = Int.random(in: 0...5)
        
        while dice1Index == dice2Index {
            dice2Index = Int.random(in: 0...5)
        }
    
        diceImageView1.image = UIImage(named: diceImages[dice1Index])
        diceImageView2.image = UIImage(named: diceImages[dice2Index])
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
            }


}
