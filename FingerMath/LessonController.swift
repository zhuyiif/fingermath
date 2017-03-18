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
import Material
import ChameleonFramework

class LessonController: UIViewController {

    var videoPlayer: YouTubePlayerView!
    var imageView: UIImageView!
    
    var firstLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.flatWhite
    
        self.edgesForExtendedLayout = []
        
        videoPlayer = YouTubePlayerView()
        self.view.addSubview(videoPlayer)
        videoPlayer.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.view.frame.height/4)
            make.width.equalTo(self.view.frame.width)
            make.left.equalTo(0)
            make.top.equalTo(0)
        }
        
        let myVideoURL = NSURL(string: "https://youtu.be/iRIHZ73PC8U")
        videoPlayer.loadVideoURL(myVideoURL! as URL)
        
        

        firstLabel = UILabel()
        self.view.addSubview(firstLabel)
        firstLabel.text = "Left hand is 10, Right hand is 1"
        
        firstLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(50)
            make.width.equalTo(self.view.frame.width)
            make.left.equalTo(12)
            make.top.equalTo(self.videoPlayer.snp.bottom).offset(12)
            
            
        }
        
        
        
        
        imageView = UIImageView()
        self.view .addSubview(imageView)
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView.snp.makeConstraints { (make) in
            make.left.equalTo(self.firstLabel).offset(0)
            make.top.equalTo(self.firstLabel.snp.bottom).offset(12)
            make.right.equalTo(self.view).offset(0)
            make.height.equalTo(self.view.frame.height/4)
            
        }
        
        let url = URL(string: "https://raw.githubusercontent.com/zhuyiif/zhuyiif.github.io/master/img/finger.jpeg")
        Nuke.loadImage(with: url!, into: imageView)
        
        
        
    }
    
}
