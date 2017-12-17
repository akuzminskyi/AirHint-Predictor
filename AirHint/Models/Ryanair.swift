//
//  Ryanair.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

struct Ryanair: Airlining {
    let name = "Ryanair"
    let routesUrl = URL(string:"http://www.airhint.com/static/data/ryanair_routes.json")!
    let airhitId = "ryanair"
}
