//
//  CharacterLogic.swift
//  tutoria2
//
//  Created by Fran Malo on 20/3/24.
//

import Foundation

final class CharacterLogic {
    static let shared = CharacterLogic()
    
    private let interactor = RickMortyInteractor.shared
    
    var characters: [CharacterModel] = []
    
    init(){
        loadCharacters()
    }
    
    private func loadCharacters() {
        do {
            characters = try interactor.getCharacters2()
        } catch {
            print(error)
        }
    }
    
    func getCharacter(indexPath: IndexPath) -> CharacterModel {
        return characters[indexPath.row]
    }
    
    
}
