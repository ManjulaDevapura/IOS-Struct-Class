//
//  StudentTableViewCell.swift
//  StructClassProject
//
//  Created by Digital-02 on 3/11/19.
//  Copyright © 2019 Digital-02. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var studentName: UILabel!
}
