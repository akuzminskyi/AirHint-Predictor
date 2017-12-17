//
//  Trip.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

struct Trip: Tripping {
    let from: Airporting
    let to: Airporting
    let date: Date
}
