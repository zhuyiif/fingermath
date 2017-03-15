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
        self.navigationItem.title = "Finger Math"
        
        self.setupTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 2
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: ID, for: indexPath)
        
        cell.textLabel?.text = "fake data " + "\(indexPath.row)"
        
        return cell
    }

}

