//
//  ViewController2.swift
//  UITableView_Swift
//
//  Created by wangguigui on 16/5/9.
//  Copyright © 2016年 topsci. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    var lists = [CollectionModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 1...20 {
            let model = CollectionModel()
            if index%3==0 {
                model.CollImageName = "转"
            } else {
                model.CollImageName = "图片"
            }
            model.CollNickName = String(index) + "aesrdg"
            lists .append(model)
        }
        
        createCollectionView()
        // Do any additional setup after loading the view.
    }

    func createCollectionView() {
        let layout = UICollectionViewFlowLayout .init()
        layout.itemSize = CGSizeMake(self.view.frame.width/4, self.view.frame.height/6)
        layout.scrollDirection = .Vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        
        let myView = UICollectionView .init(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height-49), collectionViewLayout: layout)
        myView.backgroundColor = UIColor .whiteColor()
        myView.delegate = self
        myView.dataSource = self
        
        myView .registerNib(UINib (nibName: "MyCell", bundle: nil), forCellWithReuseIdentifier: "CELLID")
        myView.registerClass(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headView")

        self.view .addSubview(myView)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lists.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCellWithReuseIdentifier("CELLID", forIndexPath: indexPath) as! MyCell
        cell.backgroundColor = UIColor .whiteColor()
        cell.Model(lists[indexPath.item])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        collectionView .deselectItemAtIndexPath(indexPath, animated: true)
        let cell = collectionView .cellForItemAtIndexPath(indexPath) as! MyCell
        print(cell.Name.text)
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
