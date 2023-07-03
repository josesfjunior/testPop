//
//  PopModel.swift
//  testPop
//
//  Created by José Júnior on 29/06/23.
//

import Foundation

struct PopModel: Codable {
    let nome, descricao, responsavel, setor, sf_symbol: String
    let etapas: [String]
    
    static let allPops: [PopModel] = Bundle.main.decode(file: "pop.json")
    static let onePop: PopModel = allPops[0]
}

extension Bundle{
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("não achei \(file)")
        }
        guard let data = try? Data(contentsOf: url) else{
            fatalError("não carreguei \(file)")
        }
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("não decodifiquei \(file)")
        }
        
        return loadedData
    }
}
