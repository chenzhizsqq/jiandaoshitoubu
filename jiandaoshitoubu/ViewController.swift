//
//  ViewController.swift
//  jiandaoshitoubu
//
//  Created by chenzhizs on 2021/04/08.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var 现在的用户选的剪刀石头布 = 1
    var 现在的电脑选的剪刀石头布 = 1
    

    @IBOutlet weak var 剪刀: UIButton!
    @IBOutlet weak var 石头: UIButton!
    @IBOutlet weak var 布: UIButton!
    @IBOutlet weak var 电脑选的: UIImageView!
    
    var player: AVAudioPlayer?
    
    func tapBtn(_ soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            player = try? AVAudioPlayer(data: sound.data)
            player?.play() // → これで音が鳴る
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func 剪刀的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 1
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        tapBtn("剪刀")
    }
    
    
    @IBAction func 石头的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 2
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        
        tapBtn("石头")
    }
    
    @IBAction func 布的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 3
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        tapBtn("布")
    }
}

