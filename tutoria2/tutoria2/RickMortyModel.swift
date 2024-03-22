//
//  RickMortyModel.swift
//  tutoria2
//
//  Created by Fran Malo on 19/3/24.
//

import Foundation

struct RickMortyResultModelDTO: Codable {
    let results: [CharacterModelDTO]
    
}

struct CharacterModelDTO: Codable {
    let id: Int
    let name: String
    let status: String
    
    var mapToModel: CharacterModel {
        CharacterModel(
            id: id,
            name: name,
            status: status,
            isFavorite: false
        )
    }
}



struct CharacterModel: Codable {
    let id: Int
    let name: String
    let status: String
    let isFavorite: Bool
    
}
