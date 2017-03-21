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

class FingerScollView: UIScrollView {
    
    override func touchesShouldCancel(in view: UIView) -> Bool {
        return false
    }
}

class LessonController: UIViewController {

    var videoPlayer: YouTubePlayerView!
    var imageView: UIImageView!
    
    var firstLabel:UILabel!
    
    var scrollView:UIScrollView!
    
    var fingerImage:FingerNumberView!
    
    var fingerQuestions:FingerNumberQuestions!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: self.view.bounds)
        self.scrollView.contentSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height*2)
        self.view.addSubview(self.scrollView)
        
        self.view.backgroundColor = UIColor.flatWhite
    
        self.edgesForExtendedLayout = []
        
        videoPlayer = YouTubePlayerView()
        self.scrollView.addSubview(videoPlayer)
        videoPlayer.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.view.frame.height/4)
            make.width.equalTo(self.view.frame.width)
            make.left.equalTo(0)
            make.top.equalTo(0)
        }
        
        let myVideoURL = NSURL(string: "https://youtu.be/iRIHZ73PC8U")
        videoPlayer.loadVideoURL(myVideoURL! as URL)
        
        firstLabel = UILabel()
        self.scrollView.addSubview(firstLabel)
        firstLabel.text = "Left hand's finger is 10,Left thumb is 50, Right hand's finger is 1, right thumb is 5"
        firstLabel.numberOfLines = 0;
        
        firstLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(50)
            make.width.equalTo(self.view.frame.width)
            make.left.equalTo(12)
            make.top.equalTo(self.videoPlayer.snp.bottom).offset(12)
            
            
        }
        
        
        
        
        imageView = UIImageView()
        self.scrollView.addSubview(imageView)
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView.snp.makeConstraints { (make) in
            make.left.equalTo(self.firstLabel).offset(0)
            make.top.equalTo(self.firstLabel.snp.bottom).offset(12)
            make.right.equalTo(self.view).offset(0)
            make.height.equalTo(self.view.frame.height/4)
            
        }
        
        let url = URL(string: "https://raw.githubusercontent.com/zhuyiif/zhuyiif.github.io/master/img/finger.jpeg")
        Nuke.loadImage(with: url!, into: imageView)
        
        // add hand pic
//        
        fingerImage = FingerNumberView(frame: CGRect.zero, height:Double( self.view.bounds.height/3.5))
        self.scrollView.addSubview(fingerImage)
        fingerImage.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.top.equalTo(self.imageView.snp.bottom).offset(12)
            make.right.equalTo(self.view)
            make.height.equalTo(Double(self.view.bounds.height/3.5))
            
      
        }
        
     
     
        fingerQuestions = FingerNumberQuestions(frame:CGRect.zero,  height: Double(self.view.bounds.height/3.5))

        self.scrollView.addSubview(fingerQuestions)
    
        fingerQuestions.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.top.equalTo(self.fingerImage.snp.bottom).offset(12)
            make.right.equalTo(self.view)
            make.height.equalTo(Double(self.view.bounds.height/3.5))
            
            
        }
        
        
        
    }
    
}
