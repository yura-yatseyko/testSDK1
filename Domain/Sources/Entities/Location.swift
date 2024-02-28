//
//  Location.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation

public protocol Location {
    var uuid: String { get }
    var name: String { get }
    var address: String { get }
    var description: String { get }
}
