//
//  FingerNumberQuestions.swift
//  FingerMath
//
//  Created by yi zhu on 3/20/17.
//  Copyright © 2017 zackzhu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Material


class FingerNumberQuestions: UIView {
    
    var questions1:FingerNumberView!
    
    override func layoutSubviews() {
        super.layoutSubviews()

    }
    
    init(frame: CGRect, height: Double) {
        questions1 = FingerNumberView(frame: frame, height: height)
        super.init(frame: frame)
        self.addSubview(questions1)
        
        questions1.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self)
            make.top.equalTo(self)
            make.right.equalTo(self)
        }
        
        self.backgroundColor = UIColor.flatMint
    }

    override init(frame: CGRect) {
        questions1 = FingerNumberView(frame: frame)
        super.init(frame: frame)
        self.addSubview(questions1)
        
        questions1.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self)
            make.top.equalTo(self)
        }
        
        self.backgroundColor = UIColor.flatMint
    }
    

    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}
