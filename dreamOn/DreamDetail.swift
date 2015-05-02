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

class DreamDetail : UIViewController, UIGestureRecognizerDelegate   {
    
    @IBOutlet weak var musicVolumeControl: UISlider!
    
    @IBOutlet weak var binauralVolumeControl: UISlider!
    @IBOutlet weak var dreamDetailNameLabel: UILabel!
    
    @IBOutlet weak var dreamDetailBackgroundImageView: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    var binauralPlayer = AVAudioPlayer()
    
    var error: NSError?
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    //MARK: ----------------------
    //MARK: Properties
    //MARK: ----------------------
    var dreamDetailName = ""
    var dreamBackgroundImageName = ""
    var dreamMusic = ""
    var binauralAudio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Transparent navigation bar
        navigationController!.navigationBar.translucent = true
        navigationController!.navigationBar.shadowImage = UIImage()
        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        /////
        
        self.dreamDetailNameLabel.text = self.dreamDetailName
        self.dreamDetailBackgroundImageView.image = UIImage(named: dreamBackgroundImageName)
        
        var audioPath = NSBundle.mainBundle().pathForResource(dreamMusic, ofType: "m4a")
        var audioURL = NSURL.fileURLWithPath(audioPath!)
        self.audioPlayer = AVAudioPlayer(contentsOfURL: audioURL, error:&error)
  
        var baudioPath = NSBundle.mainBundle().pathForResource(binauralAudio, ofType: "mp3")
        var baudioURL = NSURL.fileURLWithPath(baudioPath!)
        self.binauralPlayer = AVAudioPlayer(contentsOfURL: baudioURL, error:&error)
        
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        

        
    }
    
    //MARK: ----------------------
    //MARK: IBActions
    //MARK: ----------------------
    
    
    @IBAction func backToDreamList(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
    }
    @IBAction func playButtonAction(sender: AnyObject) {
       
        self.audioPlayer.play()

    }
    
    @IBAction func musicVolume(sender: UIButton) {
        if self.audioPlayer.playing{
           self.audioPlayer.volume = musicVolumeControl.value
        }
        
        
    }
    
    @IBAction func binauralPlayButtonAction(sender: AnyObject) {
     
        self.binauralPlayer.play()
    }
    
    @IBAction func binauralVolume(sender: AnyObject) {
        if self.binauralPlayer.playing{
         self.binauralPlayer.volume = binauralVolumeControl.value
        }
        
        
    }
    
    @IBAction func stopButtonAction(sender: AnyObject) {
        if audioPlayer.playing || binauralPlayer.playing {
            self.audioPlayer.stop()
        self.binauralPlayer.stop()
        }
        
    }
    
    
}