//
//  Wizzair.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 25/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

final class Wizzair: BaseAirlining {
    static let name = "Wizz Air"
    static let routesType: Routes = .all
    static let airhintId = "wizzair"
    
    private var routes = [IATA: [IATA]]()
}

extension Wizzair: Airlining {
    func set(routes:[IATA], forAirport airport: IATA) {
        self.routes[airport] = routes
    }
    
    func routesFor(airport: IATA) -> [IATA]? {
        return routes[airport]
    }
}
