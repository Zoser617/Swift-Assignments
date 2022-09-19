//
//  CustomDetailsVerticalCell.swift
//  SwapiSwiftMVC
//
//  Created by Zoser LeFranc 09/14/22.
//

import UIKit

class CustomDetailsVerticalCell: UITableViewCell {

    @IBOutlet weak var subTitleText: UILabel!
    @IBOutlet weak var titleText: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
