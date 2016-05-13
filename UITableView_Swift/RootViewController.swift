//
//  RootViewController.swift
//  UITableView_Swift
//
//  Created by wangguigui on 16/5/9.
//  Copyright © 2016年 topsci. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTabBarVCs()
        
        // Do any additional setup after loading the view.
    }
    
    func createTabBarVCs() {
    
        let vc1 = ViewController()
        let vc2 = ViewController2()
        
        vc1.view.backgroundColor = UIColor .whiteColor()
        vc2.view.backgroundColor = UIColor .whiteColor()

        vc1.tabBarItem.image = UIImage (named: "1")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        vc2.tabBarItem.image = UIImage (named: "2")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        vc1.tabBarItem.imageInsets = UIEdgeInsetsMake(3, 0, 0, 0)
        vc2.tabBarItem.imageInsets = UIEdgeInsetsMake(3, 0, 0, 0)
        
        vc1.tabBarItem.title = "tableView"
        vc2.tabBarItem.title = "collectionView"
        
        self.viewControllers = [vc1,vc2]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
