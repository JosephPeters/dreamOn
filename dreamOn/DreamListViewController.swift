//
//  DreamListViewController.swift
//  dreamOn
//
//  Created by Joseph Peters on 4/30/15.
//  Copyright (c) 2015 jpsites. All rights reserved.
//

import UIKit

class DreamListViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let sectionInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)

    
    var dreams: [DreamObject] = []
    
    
    //MARK: ----------------------
    //MARK: Properties
    //MARK: ----------------------

    var dreamDetailName = ""
    var dreamBackgroundImageName = ""
    var dreamMusic = ""
    var binauralAudio = ""
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.setNavigationBarHidden(true, animated: false)
        //Transparent navigation bar
        navigationController!.navigationBar.translucent = true
        navigationController!.navigationBar.shadowImage = UIImage()
        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        /////
        
        //MARK: ----------------------
        //MARK: Dreams
        //MARK: ----------------------

        var dreams1 = DreamObject()
        dreams1.dreamName = "lucid control"
        dreams1.dreamDescription = "smooth sounds"
        dreams1.dreamBackgroundImage = "dreambg1"
        dreams1.dreamAudio = "mountain_lake"
        dreams1.dreamBinaural = "bn"
        
        var dreams2 = DreamObject()
        dreams2.dreamName = "zen aura"
        dreams2.dreamDescription = "smooth sounds"
        dreams2.dreamBackgroundImage = "dreambg2"
        dreams2.dreamAudio = "rain_leaves"
        dreams2.dreamBinaural = "bn"
        
        var dreams3 = DreamObject()
        dreams3.dreamName = "ascension"
        dreams3.dreamDescription = "smooth sounds"
        dreams3.dreamBackgroundImage = "dreambg3"
        dreams3.dreamAudio = "mountain_lake"
        dreams3.dreamBinaural = "bn"
        
        var dreams4 = DreamObject()
        dreams4.dreamName = "astral discovery"
        dreams4.dreamDescription = "smooth sounds"
        dreams4.dreamBackgroundImage = "dreambg4"
        dreams4.dreamAudio = "rain_leaves"
        dreams4.dreamBinaural = "bn"
        
        var dreams5 = DreamObject()
        dreams5.dreamName = "flying high"
        dreams5.dreamDescription = "smooth sounds"
        dreams5.dreamBackgroundImage = "dreambg5"
        dreams5.dreamAudio = "mountain_lake"
        dreams5.dreamBinaural = "bn"
        
        var dreams6 = DreamObject()
        dreams6.dreamName = "deep reflection"
        dreams6.dreamDescription = "smooth sounds"
        dreams6.dreamBackgroundImage = "dreambg6"
        dreams6.dreamAudio = "rain_leaves"
        dreams6.dreamBinaural = "bn"
        
        var dreams7 = DreamObject()
        dreams7.dreamName = "pure euphoria"
        dreams7.dreamDescription = "smooth sounds"
        dreams7.dreamBackgroundImage = "dreambg7"
        dreams7.dreamAudio = "mountain_lake"
        dreams7.dreamBinaural = "bn"
        
        var dreams8 = DreamObject()
        dreams8.dreamName = "new adventure"
        dreams8.dreamDescription = "smooth sounds"
        dreams8.dreamBackgroundImage = "dreambg8"
        dreams8.dreamAudio = "rain_leaves"
        dreams8.dreamBinaural = "bn"
        
        var dreams9 = DreamObject()
        dreams9.dreamName = "romantic focus"
        dreams9.dreamDescription = "smooth sounds"
        dreams9.dreamBackgroundImage = "dreambg9"
        dreams9.dreamAudio = "mountain_lake"
        dreams9.dreamBinaural = "bn"
        
        var dreams10 = DreamObject()
        dreams10.dreamName = "multi-dimension"
        dreams10.dreamDescription = "smooth sounds"
        dreams10.dreamBackgroundImage = "dreambg10"
        dreams10.dreamAudio = "rain_leaves"
        dreams10.dreamBinaural = "bn"
        
        var dreams11 = DreamObject()
        dreams11.dreamName = "warm sensations"
        dreams11.dreamDescription = "smooth sounds"
        dreams11.dreamBackgroundImage = "dreambg11"
        dreams11.dreamAudio = "mountain_lake"
        dreams11.dreamBinaural = "bn"
        
        var dreams12 = DreamObject()
        dreams12.dreamName = "conquer all"
        dreams12.dreamDescription = "smooth sounds"
        dreams12.dreamBackgroundImage = "dreambg12"
        dreams12.dreamAudio = "rain_leaves"
        dreams12.dreamBinaural = "bn"
        
        var dreams13 = DreamObject()
        dreams13.dreamName = "creative flows"
        dreams13.dreamDescription = "smooth sounds"
        dreams13.dreamBackgroundImage = "dreambg13"
        dreams13.dreamAudio = "mountain_lake"
        dreams13.dreamBinaural = "bn"
        
        var dreams14 = DreamObject()
        dreams14.dreamName = "awareness"
        dreams14.dreamDescription = "smooth sounds"
        dreams14.dreamBackgroundImage = "dreambg14"
        dreams14.dreamAudio = "rain_leaves"
        dreams14.dreamBinaural = "bn"
        
        var dreams15 = DreamObject()
        dreams15.dreamName = "clarity now"
        dreams15.dreamDescription = "smooth sounds"
        dreams15.dreamBackgroundImage = "dreambg15"
        dreams15.dreamAudio = "mountain_lake"
        dreams15.dreamBinaural = "bn"
        
        var dreams16 = DreamObject()
        dreams16.dreamName = "abundant love"
        dreams16.dreamDescription = "smooth sounds"
        dreams16.dreamBackgroundImage = "dreambg16"
        dreams16.dreamAudio = "rain_leaves"
        dreams16.dreamBinaural = "bn"
        
        var dreams17 = DreamObject()
        dreams17.dreamName = "healing trance"
        dreams17.dreamDescription = "smooth sounds"
        dreams17.dreamBackgroundImage = "dreambg17"
        dreams17.dreamAudio = "mountain_lake"
        dreams17.dreamBinaural = "bn"
        
        var dreams18 = DreamObject()
        dreams18.dreamName = "unwind"
        dreams18.dreamDescription = "smooth sounds"
        dreams18.dreamBackgroundImage = "dreambg18"
        dreams18.dreamAudio = "rain_leaves"
        dreams18.dreamBinaural = "bn"
        
        var dreams19 = DreamObject()
        dreams19.dreamName = "Dream19"
        dreams19.dreamDescription = "smooth sounds"
        dreams19.dreamBackgroundImage = "dreambg19"
        dreams19.dreamAudio = "rain_leaves"
        dreams19.dreamBinaural = "bn"
        
        var dreams20 = DreamObject()
        dreams20.dreamName = "Dream20"
        dreams20.dreamDescription = "smooth sounds"
        dreams20.dreamBackgroundImage = "dreambg20"
        dreams20.dreamAudio = "mountain_lake"
        dreams20.dreamBinaural = "bn"
        
        self.dreams += ([dreams1,dreams2,dreams3,dreams4,dreams5,dreams6,dreams7,dreams8,dreams9,dreams10,dreams11,dreams12,dreams13,dreams14,dreams15,dreams16,dreams17,dreams18,dreams19,dreams20])
    }
    
    //MARK: ----------------------
    //MARK: CollectionView
    //MARK: ----------------------

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dreams.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var dream = self.dreams[indexPath.row]
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("DreamCell", forIndexPath: indexPath) as! DreamCollectionViewCell
        
        cell.dreamNameLabel.text = dream.dreamName
        cell.dreamBackgroundImageView.image = UIImage(named:dream.dreamBackgroundImage)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        var dream = self.dreams[indexPath.row]
        self.dreamDetailName = dream.dreamName
        self.dreamBackgroundImageName = dream.dreamBackgroundImage
        self.dreamMusic = dream.dreamAudio
        self.binauralAudio = dream.dreamBinaural
        self.performSegueWithIdentifier("DreamListToDreamDetail", sender: nil)
    }
    
    func collectionView(collectionView: UICollectionView!,
        layout collectionViewLayout: UICollectionViewLayout!,
        sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
            return CGSize(width: (self.collectionView.frame.width / 2) - 1, height: (self.collectionView.frame.width / 2) - 1)
    }
    
    func collectionView(collectionView: UICollectionView!,
        layout collectionViewLayout: UICollectionViewLayout!,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
    
    //MARK: ----------------------
    //MARK: Segues
    //MARK: ----------------------

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DreamListToDreamDetail" {
            var detailViewController = segue.destinationViewController as! DreamDetail
            
            detailViewController.dreamDetailName = dreamDetailName
            detailViewController.dreamBackgroundImageName = dreamBackgroundImageName
            detailViewController.dreamMusic = dreamMusic
            detailViewController.binauralAudio = binauralAudio
        }
    }
    


}

