//
//  SongCell.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 06/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    static let reuseIdentifier = "SongCell"
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var songRuntimeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
