//
//  RickMortyInteractor.swift
//  tutoria2
//
//  Created by Fran Malo on 19/3/24.
//

import Foundation

struct RickMortyInteractor {
    static let shared = RickMortyInteractor()
    
    private init(){}
    
    func getCharacters() -> [CharacterModel] {
        guard let jsonUrl = Bundle.main.url(forResource: "rickymorty", withExtension: "json") else { return [] }
        do {
            let data = try Data(contentsOf: jsonUrl)
            let resultado = try JSONDecoder().decode(RickMortyResultModelDTO.self, from: data).results
            
            return resultado.map { character in
                character.mapToModel
            }
            
        } catch {
            print(error)
            return []
        }
    }
    
    func getCharacters2() throws -> [CharacterModel] {
        guard let jsonUrl = Bundle.main.url(forResource: "rickymorty", withExtension: "json") else { return [] }
        let data = try Data(contentsOf: jsonUrl)
        return try JSONDecoder().decode(RickMortyResultModelDTO.self, from: data).results.map { $0.mapToModel }
        
        //return try JSONDecoder().decode(RickMortyResultModelDTO.self, from: data).results.map(\.mapToModel)
    }
}
