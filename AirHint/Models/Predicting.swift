//
//  Predicting.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol Predicting {
    var suggestion: String { get }
    var confidence: Float { get }
    var recommendation: [String] { get }
    var hints: [String] { get }
    var priceRange: [Float] { get }
}
