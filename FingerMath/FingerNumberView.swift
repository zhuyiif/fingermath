//
//  FingerNumberView.swift
//  FingerMath
//
//  Created by yi zhu on 3/20/17.
//  Copyright © 2017 zackzhu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Material


class FingerNumberView: UIView {
    
    var leftImageView: UIImageView!
    var rightImageView: UIImageView!
    
    var leftLabel:UILabel!
    var rightLabel:UILabel!
    
    var preBtn:UIButton!
    var nextBtn:UIButton!
    
    var currentNumber:Int!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let leftNumber = self.currentNumber / 10
        let rightNumber = self.currentNumber % 10
        
        leftImageView.image = self.fingerNumberImageWithNumber(isRightHand: false, number: leftNumber)
        rightImageView.image = self.fingerNumberImageWithNumber(isRightHand: true, number: rightNumber)
        
        leftLabel.text = "\(leftNumber)"
        leftLabel.textAlignment = NSTextAlignment.center
        rightLabel.text = "\(rightNumber)"
        rightLabel.textAlignment = NSTextAlignment.center
     
        
    }
    
    func preNumber(){
        if self.currentNumber > 0 {
            self.currentNumber! -= 1
        }
        self.setNeedsLayout()
    }
    
    func nextNumber(){
        
        if self.currentNumber <= 98 {
        self.currentNumber! += 1
        }
        self.setNeedsLayout()
    }
    
    init(frame: CGRect, height: Double) {
        
        leftImageView = UIImageView()
        rightImageView = UIImageView()
        
        leftLabel = UILabel()
        rightLabel = UILabel()
        
        preBtn = RaisedButton()
        nextBtn = RaisedButton()
        
        currentNumber = 0
        
        super.init(frame: frame)
        self.addSubview(leftImageView)
        self.addSubview(rightImageView)
        self.addSubview(preBtn)
        self.addSubview(nextBtn)
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
        
        let width = UIScreen.main.bounds.width
        leftImageView.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(height*3.5/10)
            make.width.equalTo(width/3)
            make.left.equalTo(width/6)
            make.top.equalTo(self)
        }
        
        rightImageView.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.leftImageView.snp.height)
            make.width.equalTo(self.leftImageView.snp.width)
            make.left.equalTo(self.leftImageView.snp.right)
            make.top.equalTo(self)
        }
        
        
        let leftNumber = self.currentNumber / 10
        let rightNumber = self.currentNumber % 10
        
        leftImageView.image = self.fingerNumberImageWithNumber(isRightHand: false, number: leftNumber)
        rightImageView.image = self.fingerNumberImageWithNumber(isRightHand: true, number: rightNumber)
        
        rightImageView.contentMode = UIViewContentMode.scaleAspectFit
        leftImageView.contentMode = UIViewContentMode.scaleAspectFit
        
        
        leftLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.leftImageView.snp.height).offset(-10)
            make.width.equalTo(self.leftImageView.snp.width)
            make.left.equalTo(self.leftImageView)
            make.top.equalTo(self.leftImageView.snp.bottom).offset(0)
        }
        
        rightLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(leftLabel.snp.height)
            make.width.equalTo(self.rightImageView.snp.width)
            make.left.equalTo(self.rightImageView)
            make.top.equalTo(self.rightImageView.snp.bottom).offset(0)
        }
        
        leftLabel.text = "\(leftNumber)"
        leftLabel.textAlignment = NSTextAlignment.center
        rightLabel.text = "\(rightNumber)"
        rightLabel.textAlignment = NSTextAlignment.center
        
        preBtn.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(self.leftLabel.snp.width)
            make.left.equalTo(self.leftLabel)
            make.top.equalTo(self.leftLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        nextBtn.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(self.rightLabel.snp.width)
            make.left.equalTo(self.rightLabel)
            make.top.equalTo(self.rightLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        preBtn.setTitle("Pre", for: UIControlState.normal)
        
        preBtn.setTitleColor(UIColor.flatBlue, for: UIControlState.normal)
        nextBtn.setTitle("Next", for: UIControlState.normal)
        nextBtn.setTitleColor(UIColor.flatPlum, for: UIControlState.normal)
        
        
        preBtn.addTarget(self, action:#selector(self.preNumber) , for: .touchUpInside)
        nextBtn.addTarget(self, action:#selector(self.nextNumber) , for: .touchUpInside)
        
        
        
    }
    
    override init(frame: CGRect) {
        
        leftImageView = UIImageView()
        rightImageView = UIImageView()
        
        leftLabel = UILabel()
        rightLabel = UILabel()
        
        preBtn = RaisedButton()
        nextBtn = RaisedButton()
        
        currentNumber = 0
        
        super.init(frame: frame)
        self.addSubview(leftImageView)
        self.addSubview(rightImageView)
        self.addSubview(preBtn)
        self.addSubview(nextBtn)
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
        
  
        leftImageView.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.height*3.5/10)
            make.width.equalTo(self.bounds.width/3)
            make.left.equalTo(self.bounds.height/6)
            make.top.equalTo(self)
        }
        
        rightImageView.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.leftImageView.snp.height)
            make.width.equalTo(self.leftImageView.snp.width)
            make.left.equalTo(self.leftImageView.snp.right)
            make.top.equalTo(self)
        }
        
        
        let leftNumber = self.currentNumber / 10
        let rightNumber = self.currentNumber % 10
        
        leftImageView.image = self.fingerNumberImageWithNumber(isRightHand: false, number: leftNumber)
        rightImageView.image = self.fingerNumberImageWithNumber(isRightHand: true, number: rightNumber)
        
        rightImageView.contentMode = UIViewContentMode.scaleAspectFit
        leftImageView.contentMode = UIViewContentMode.scaleAspectFit
        
        
        leftLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.leftImageView.snp.height).offset(-10)
            make.width.equalTo(self.leftImageView.snp.width)
            make.left.equalTo(self.leftImageView)
            make.top.equalTo(self.leftImageView.snp.bottom).offset(0)
        }
        
        rightLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(leftLabel.snp.height)
            make.width.equalTo(self.rightImageView.snp.width)
            make.left.equalTo(self.rightImageView)
            make.top.equalTo(self.rightImageView.snp.bottom).offset(0)
        }
        
        leftLabel.text = "\(leftNumber)"
        leftLabel.textAlignment = NSTextAlignment.center
        rightLabel.text = "\(rightNumber)"
        rightLabel.textAlignment = NSTextAlignment.center
        
        preBtn.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(self.leftLabel.snp.width)
            make.left.equalTo(self.leftLabel)
            make.top.equalTo(self.leftLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        nextBtn.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(self.rightLabel.snp.width)
            make.left.equalTo(self.rightLabel)
            make.top.equalTo(self.rightLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        preBtn.setTitle("Pre", for: UIControlState.normal)
        
        preBtn.setTitleColor(UIColor.flatBlue, for: UIControlState.normal)
        nextBtn.setTitle("Next", for: UIControlState.normal)
        nextBtn.setTitleColor(UIColor.flatPlum, for: UIControlState.normal)
        
        
        preBtn.addTarget(self, action:#selector(self.preNumber) , for: .touchUpInside)
        nextBtn.addTarget(self, action:#selector(self.nextNumber) , for: .touchUpInside)

        
        
    }
    
    func fingerNumberImageWithNumber(isRightHand:Bool, number:Int) ->UIImage {
        if isRightHand {
            return UIImage(named: "Media.scnassets/right\(number).png")!
        }
        else {
            return UIImage(named: "Media.scnassets/left\(number).png")!
        }
    }
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}
