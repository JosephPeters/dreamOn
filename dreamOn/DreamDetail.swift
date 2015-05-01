//
//  DreamDetail.swift
//  dreamOn
//
//  Created by Joseph Peters on 4/30/15.
//  Copyright (c) 2015 jpsites. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class DreamDetail : UIViewController   {
    
    @IBOutlet weak var musicVolumeControl: UISlider!
    
    @IBOutlet weak var binauralVolumeControl: UISlider!
    @IBOutlet weak var dreamDetailNameLabel: UILabel!
    
    @IBOutlet weak var dreamDetailBackgroundImageView: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    var binauralPlayer = AVAudioPlayer()
    
    var error: NSError?
    
    //MARK: ----------------------
    //MARK: Properties
    //MARK: ----------------------
    var dreamDetailName = ""
    var dreamBackgroundImageName = ""
    var dreamMusic = ""
    var binauralAudio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dreamDetailNameLabel.text = self.dreamDetailName
        self.dreamDetailBackgroundImageView.image = UIImage(named: dreamBackgroundImageName)
         
    }
    
    //MARK: ----------------------
    //MARK: IBActions
    //MARK: ----------------------
    
    @IBAction func playButtonAction(sender: AnyObject) {
        var audioPath = NSBundle.mainBundle().pathForResource(dreamMusic, ofType: "m4a")
        var audioURL = NSURL.fileURLWithPath(audioPath!)
        self.audioPlayer = AVAudioPlayer(contentsOfURL: audioURL, error:&error)

        self.audioPlayer.play()
    }
    
    @IBAction func musicVolume(sender: AnyObject) {

           self.audioPlayer.volume = musicVolumeControl.value
        
    }
    
    @IBAction func binauralPlayButtonAction(sender: AnyObject) {
        var audioPath = NSBundle.mainBundle().pathForResource(binauralAudio, ofType: "mp3")
        var audioURL = NSURL.fileURLWithPath(audioPath!)
        self.binauralPlayer = AVAudioPlayer(contentsOfURL: audioURL, error:&error)
        
        
        self.binauralPlayer.play()
    }
    
    @IBAction func binauralVolume(sender: AnyObject) {
        
        self.binauralPlayer.volume = binauralVolumeControl.value
        
    }
    
    @IBAction func stopButtonAction(sender: AnyObject) {
        self.audioPlayer.stop()
        self.binauralPlayer.stop()
    }
    
    
}