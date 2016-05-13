//
//  MyCell.swift
//  UITableView_Swift
//
//  Created by wangguigui on 16/5/9.
//  Copyright © 2016年 topsci. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {

    
    var collModel:CollectionModel!
    
    @IBOutlet weak var HeadImage: UIImageView!
    @IBOutlet weak var Name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func Model(MyModel:CollectionModel) {
        collModel = MyModel
        Name.text = collModel.CollNickName
        HeadImage.image = UIImage (named: collModel.CollImageName!)
    }
}
