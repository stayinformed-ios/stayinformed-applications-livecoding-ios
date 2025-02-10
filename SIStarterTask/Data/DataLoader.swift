//
//  DataLoader.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import Foundation

struct DataLoader {
    
    // MARK: - Types
    
    private struct ScreenAJsonModel: Decodable {
        let title: String?
        let subtitle: String?
    }
    
    private struct ScreenBJsonModel: Decodable {
        let title: String?
        let image: String?
    }
    
    // MARK: - Properties
    
    var screenAData: [CellAContentViewModel] {
        do {
            let json: [ScreenAJsonModel] = try getJsonData(from: "screen-a-data")
            return json.map { .init(title: $0.title, subtitle: $0.subtitle) }
        } catch {
            return []
        }
    }
    
    var screenBData: [CellBContentViewModel] {
        do {
            let json: [ScreenBJsonModel] = try getJsonData(from: "screen-b-data")
            return json.map { .init(title: $0.title, image: .init(systemName: $0.image ?? "")) }
        } catch {
            return []
        }
    }
    
    // MARK: - Methods
    
    private func getJsonData<T: Decodable>(from filename: String) throws -> T {
        let data = try LocalJsonLoader().loadData(from: filename)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
