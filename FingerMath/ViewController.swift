//
//  ViewController.swift
//  FingerMath
//
//  Created by yi zhu on 3/14/17.
//  Copyright © 2017 zackzhu. All rights reserved.
//

import UIKit
import SnapKit

let ID = "Cell"
//test

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let tableView:UITableView = UITableView()
    
    var lessonArray:[String] = [String]()
    
    func setupLesson(){
        self.lessonArray.append("Introduction")
        self.lessonArray.append("Counting From 1 to 10")
        self.lessonArray.append("Counting From 10 to 100")
        self.lessonArray.append("From 10 to 20")
        
    }
    
    func setupTableView(){
        self.view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ID);
        tableView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.top.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view)
        }
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Finger Math"
        self.setupLesson()
        
        self.setupTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.lessonArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: ID, for: indexPath)
        
        cell.textLabel?.text = "\(lessonArray[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lessCtrl = LessonController()
        self.navigationController?.pushViewController(lessCtrl, animated: true)
    }

}

