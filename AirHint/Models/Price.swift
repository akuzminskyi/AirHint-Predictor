//
//  Price.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation
struct Price {
    let currency: String
    let date: Date // "date" + "time"
    let discount: Bool
    let flight: String
    let price: Float
}
