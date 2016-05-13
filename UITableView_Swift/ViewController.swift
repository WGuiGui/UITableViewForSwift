//
//  ViewController.swift
//  UITableView_Swift
//
//  Created by wangguigui on 16/5/9.
//  Copyright © 2016年 topsci. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var datas = [MyModel]()
    var myTableView:UITableView!
    var vc3:ViewController3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datas =  getDatas()
        
        createTableView()

        // Do any additional setup after loading the view, typically from a nib.
    }

    func getDatas()->[MyModel] {
        var listArr = [MyModel]()
        
        for index in 1...20 {
            let model:MyModel = MyModel .init()
            model.nickName = String(index) + "wangfeifei"
            if index%2==0 {
                model.ImageName = "图片"
            } else {
                model.ImageName = "转"
            }
            model.descriptionStr = "This is a descripton for cell"
            
            listArr .append(model)
        }
        return listArr
    }
    
    func addNewBtn() {
        let btn:UIButton = UIButton .init(type: UIButtonType.RoundedRect)
        btn.frame = CGRectMake(self.view.frame.width-49, 30, 49, 34)
        btn .addTarget(self, action: #selector(ViewController.addNewView), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(btn)
    }
    
    func addNewView() {
        var frame:CGRect = self.vc3.view.frame
        frame.origin.x = 49;
        UIView .animateWithDuration(0.3) { 
            self.vc3.view.frame = frame
        }
    }
    
    func createTableView() {
    
        myTableView = UITableView .init(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height-49), style: UITableViewStyle.Plain)
        myTableView .rowHeight = 100
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let nib:UINib = UINib (nibName: "MyTableViewCell", bundle: nil)
        myTableView .registerNib(nib, forCellReuseIdentifier: "CELLID")
        self.view .addSubview(myTableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CELLID", forIndexPath: indexPath) as! MyTableViewCell
        
        cell.Model(datas[indexPath.row])
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

