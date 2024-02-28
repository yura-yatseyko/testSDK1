//
//  String+utf8Data.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation

public extension String {
    var utf8Data: Data { .init(utf8) }
}
