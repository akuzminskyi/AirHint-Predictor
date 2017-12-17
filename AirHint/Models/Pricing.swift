//
//  Pricing.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol Pricing {
    var currency: String { get }
    var date: Date { get }
    var discount: Bool { get }
    var flight: String { get }
    var price: Float { get }
}
