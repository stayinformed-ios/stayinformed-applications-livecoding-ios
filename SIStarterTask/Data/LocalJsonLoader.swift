//
//  LocalJsonLoader.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import Foundation

struct LocalJsonLoader {
    
    func loadData(from fileName: String) throws -> Data {
        guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            throw URLError(.fileDoesNotExist)
        }
        
        return try Data(contentsOf: fileURL)
    }
}
