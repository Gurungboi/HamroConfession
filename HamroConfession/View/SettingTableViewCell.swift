//
//  SettingTableViewCell.swift
//  HamroConfession
//
//  Created by Sunil Gurung on 4/7/18.
//  Copyright © 2018 Sunil Gurung. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var borderView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI() {
        
        //Aligning image and text in middle horizontally
        self.imgIcon.center.y = self.borderView.frame.height/2
        self.lblname.center.y = self.borderView.frame.height/2
        
        Utilities().addShadowToView(contentView: contentView, backgroundCardView: borderView)
    }


}
