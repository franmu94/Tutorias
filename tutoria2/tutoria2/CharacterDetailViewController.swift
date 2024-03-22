//
//  CharacterDetailViewController.swift
//  tutoria2
//
//  Created by Alex  on 22/3/24.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    
    @IBOutlet weak var DetailImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    var selectedCharacter: CharacterModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailImage.image = UIImage(systemName: "star")
        labelName.text = selectedCharacter?.name
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
