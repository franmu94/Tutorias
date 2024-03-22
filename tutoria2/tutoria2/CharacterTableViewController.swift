//
//  CharacterTableViewController.swift
//  tutoria2
//
//  Created by Alex  on 22/3/24.
//

import UIKit

class CharacterTableViewController: UITableViewController {
    
    let charactersLogic = CharacterLogic.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return charactersLogic.characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "zelda", for: indexPath) as? CharacterCell else { return UITableViewCell() }
        
        let character = charactersLogic.getCharacter(indexPath: indexPath)
        cell.CharacterImage.image = UIImage(systemName: "star")
        cell.characterName.text = character.name
        cell.characterStatus.text = character.status
                
        return cell
    }

    @IBSegueAction func segueDetail(_ coder: NSCoder) -> CharacterDetailViewController? {
        guard let selected = tableView.indexPathForSelectedRow else { return nil }
        let detailViewController = CharacterDetailViewController(coder: coder)
        detailViewController?.selectedCharacter = charactersLogic.getCharacter(indexPath: selected)
        return detailViewController
    }
    
}
