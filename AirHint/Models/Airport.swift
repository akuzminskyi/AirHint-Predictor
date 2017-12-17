//
//  Airport.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

struct Airport: Airporting {
    let code: String
    let name: String
    let destinations: [Airporting]
}
