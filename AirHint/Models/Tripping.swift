//
//  Tripping.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol Tripping {
    var from: Airporting { get }
    var to: Airporting { get }
    var date: Date { get }
}
