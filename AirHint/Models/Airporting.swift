//
//  Airporting.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol Airporting {
    var code: String { get }
    var name: String { get }
    var destinations: [Airporting] { get }
}
