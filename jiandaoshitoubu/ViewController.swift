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
    
    @IBOutlet weak var 笑: UIImageView!
    @IBOutlet weak var 哭: UIImageView!
    
    @IBOutlet weak var 按钮: UIButton!
    
    var player: AVAudioPlayer?
    
    func tapBtn(_ soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            player = try? AVAudioPlayer(data: sound.data)
            player?.play() // → これで音が鳴る
        }
    }
    
    func funResult(玩家:Int,电脑:Int) {
        print("玩家:\(玩家)")
        print("电脑:\(电脑)")
        笑.isHidden = true
        哭.isHidden = true
        
        剪刀.isHidden = true
        石头.isHidden = true
        布.isHidden = true
        
        剪刀.alpha = 0
        石头.alpha = 0
        布.alpha = 0
        
        if  玩家 == 1 &&  电脑 == 3{
            笑.isHidden = false
        }
        if  玩家 == 2 &&  电脑 == 1{
            笑.isHidden = false
        }
        if  玩家 == 3 &&  电脑 == 2{
            笑.isHidden = false
        }
        
        
        if  电脑 == 1 &&  玩家 == 3{
            哭.isHidden = false
        }
        if  电脑 == 2 &&  玩家 == 1{
            哭.isHidden = false
        }
        if  电脑 == 3 &&  玩家 == 2{
            哭.isHidden = false
        }
        
        if 电脑 == 玩家 {
            
            剪刀.isHidden = false
            石头.isHidden = false
            布.isHidden = false
            
            剪刀.alpha = 0
            石头.alpha = 0
            布.alpha = 0
        }
        
        剪刀.isHidden = false
        石头.isHidden = false
        布.isHidden = false
        
        剪刀.isEnabled = false
        石头.isEnabled = false
        布.isEnabled = false
        
        
        
        电脑选的.isHidden = false
        按钮.isHidden = false
        按钮.setImage(UIImage(named: "\(玩家)"), for: .normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        笑.isHidden = true
        哭.isHidden = true
        按钮.isHidden = true
        电脑选的.isHidden = true
        
    }
    
    @IBAction func 剪刀的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 1
        按钮.isHidden = true
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        tapBtn("剪刀")
        funResult(玩家:现在的用户选的剪刀石头布,电脑:现在的电脑选的剪刀石头布)
    }
    
    
    @IBAction func 石头的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 2
        按钮.isHidden = true
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        
        tapBtn("石头")
        funResult(玩家:现在的用户选的剪刀石头布,电脑:现在的电脑选的剪刀石头布)
    }
    
    @IBAction func 布的函数(_ sender: Any) {
        现在的用户选的剪刀石头布 = 3
        按钮.isHidden = true
        
        
        现在的电脑选的剪刀石头布 = Int.random(in: 1...3)
        
        电脑选的.image = UIImage(named: "\(现在的电脑选的剪刀石头布)")
        tapBtn("布")
        funResult(玩家:现在的用户选的剪刀石头布,电脑:现在的电脑选的剪刀石头布)
    }
    @IBAction func 按钮的函数(_ sender: Any) {
        笑.isHidden = true
        哭.isHidden = true
        
        剪刀.isHidden = false
        石头.isHidden = false
        布.isHidden = false
        
        电脑选的.isHidden = true
        
        
        剪刀.alpha = 1
        石头.alpha = 1
        布.alpha = 1
        
        剪刀.isEnabled = true
        石头.isEnabled = true
        布.isEnabled = true
        
        按钮.isHidden = true
    }
}

