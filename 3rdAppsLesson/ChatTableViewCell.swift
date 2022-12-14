//
//  ChatTableViewCell.swift
//  3rdAppsLesson
//
//  Created by user on 14/12/22.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var chatImageView: UIImageView!
    
    
    @IBOutlet weak var chatNameLabel: UILabel!
    
    
    @IBOutlet weak var chatMessageLabel: UILabel!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
