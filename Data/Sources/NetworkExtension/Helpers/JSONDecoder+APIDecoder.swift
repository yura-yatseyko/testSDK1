//
//  JSONDecoder+APIDecoder.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation

extension JSONDecoder {
    public static let apiDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
}
