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
    
    var dreams: [DreamObject] = []
    
    
    //MARK: ----------------------
    //MARK: Properties
    //MARK: ----------------------

    var dreamDetailName = ""
    var dreamBackgroundImageName = ""
    var dreamMusic = ""
    var binauralAudio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK: ----------------------
        //MARK: Dreams
        //MARK: ----------------------

        var dreams1 = DreamObject()
        dreams1.dreamName = "lucid"
        dreams1.dreamDescription = "smooth sounds"
        dreams1.dreamBackgroundImage = "night_lake"
        dreams1.dreamAudio = "mountain_lake"
        dreams1.dreamBinaural = ""
        
        var dreams2 = DreamObject()
        dreams2.dreamName = "relaxing"
        dreams2.dreamDescription = "smooth sounds"
        dreams2.dreamBackgroundImage = "ocean_floor"
        dreams2.dreamAudio = "rain_leaves"
        dreams2.dreamBinaural = ""
        
        self.dreams += ([dreams1,dreams2])
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
    
    //MARK: ----------------------
    //MARK: Segues
    //MARK: ----------------------

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! DreamDetail
        
        detailViewController.dreamDetailName = dreamDetailName
        detailViewController.dreamBackgroundImageName = dreamBackgroundImageName
        detailViewController.dreamMusic = dreamMusic
        detailViewController.binauralAudio = binauralAudio
    }
    


}

