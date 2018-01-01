//
//  Airporting.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

typealias IATA = String

protocol Airporting {
    var code: IATA { get }
    var name: String? { get }
}
