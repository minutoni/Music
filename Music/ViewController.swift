//
//  ViewController.swift
//  Music
//
//  Created by 所　紀彦 on 2019/04/05.
//  Copyright © 2019年 所　紀彦. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setAudioPlayer(soundName:String, type :String) {
        let soundFilePath = Bundle.main.path(forResource: soundName,ofType:type)!
        let fileURL = URL(fileURLWithPath:soundFilePath)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
    }
    
    
    @IBAction func natsu(){
        setAudioPlayer(soundName:"natsu",type:"mp3")
        audioPlayer.play()
    }
    
    @IBAction func ame(){
        setAudioPlayer(soundName:"ame",type:"mp3")
        audioPlayer.play()
    }
    
    @IBAction func aki(){
        setAudioPlayer(soundName:"aki",type:"mp3")
        audioPlayer.play()
    }
}

