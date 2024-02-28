//
//  JSONEncoder+APIEncoder.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation

extension JSONEncoder {
    public static let apiEncoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }()
}
