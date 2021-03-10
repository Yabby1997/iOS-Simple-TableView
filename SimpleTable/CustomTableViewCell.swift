//
//  CustomTableViewCell.swift
//  SimpleTable
//
//  Created by Seunghun Yang on 2021/03/10.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
