//
//  MyTableViewCell.swift
//  noticepractice
//
//  Created by 윤소희 on 2022/05/14.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var wDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
