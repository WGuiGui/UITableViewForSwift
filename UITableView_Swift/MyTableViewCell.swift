//
//  MyTableViewCell.swift
//  UITableView_Swift
//
//  Created by wangguigui on 16/5/9.
//  Copyright © 2016年 topsci. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var HeadImage: UIImageView!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var NickName: UILabel!
    
    var Model:MyModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HeadImage.layer.masksToBounds = true
        HeadImage.layer.cornerRadius = HeadImage.frame.width/2
        // Initialization code
    }
    
    func Model(model:MyModel){
        Model = model
        HeadImage .image = UIImage (named: model.ImageName!)
        DescriptionLabel.text = model.descriptionStr
        NickName.text = model.nickName
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
