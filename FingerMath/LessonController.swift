//
//  LessonController.swift
//  FingerMath
//
//  Created by yi zhu on 3/16/17.
//  Copyright © 2017 zackzhu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import MediaPlayer
import YouTubePlayer
import Nuke
import AWSS3

class LessonController: UIViewController {
    var avPlayer:AVPlayer!
    
    var videoPlayer: YouTubePlayerView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        videoPlayer = YouTubePlayerView(frame: self.view.bounds)
//        
//        let myVideoURL = NSURL(string: "https://www.youtube.com/watch?v=q3irC0WKbcc&list=PL5mUgUAASqxayABfMm7BTO5S198E6RyAd")
//        videoPlayer.loadVideoURL(myVideoURL! as URL)
        
//        let videoURL = NSURL(string: "https://www.youtube.com/watch?v=q3irC0WKbcc&list=PL5mUgUAASqxayABfMm7BTO5S198E6RyAd")
//        avPlayer = AVPlayer(url: videoURL! as URL)
//        let playerLayer = AVPlayerLayer(player: avPlayer)
//        playerLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 3.0 / 4.0)
//        self.view.layer.addSublayer(playerLayer)
//        avPlayer.play()
        
        
        imageView = UIImageView(frame: self.view.bounds)
        self.view .addSubview(imageView)
        
        let url = URL(string: "https://raw.githubusercontent.com/zhuyiif/zhuyiif.github.io/master/img/finger.jpeg")
        Nuke.loadImage(with: url!, into: imageView)
        
        
        
    }
    
}
