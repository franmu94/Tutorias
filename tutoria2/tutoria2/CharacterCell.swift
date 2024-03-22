//
//  CharacterCell.swift
//  tutoria2
//
//  Created by Alex  on 22/3/24.
//

import UIKit

class CharacterCell: UITableViewCell {
    
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var CharacterImage: UIImageView!
    @IBOutlet weak var characterStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        characterName.text = nil
        CharacterImage.image = nil
        characterStatus.text = nil
    }
}
