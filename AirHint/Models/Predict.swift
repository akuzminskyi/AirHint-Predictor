//
//  Predict.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

struct Predict: Predicting {
    let suggestion: String
    let confidence: Float
    let recommendation: [String]
    let hints: [String]
    let priceRange: [Float] // struct PriceRange:  min,max, current
}
