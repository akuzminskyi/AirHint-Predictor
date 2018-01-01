//
//  Ryanair.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

final class Ryanair: BaseAirlining {
    static let name = "Ryanair"
    static let routesType: Routes = .specified(routeURL: URL(string:"http://www.airhint.com/static/data/ryanair_routes.json")!)
    static let airhintId = "ryanair"

    private var routes = [IATA: [IATA]]()
}

extension Ryanair: Airlining {
    func set(routes:[IATA], forAirport airport: IATA) {
        self.routes[airport] = routes
    }
    
    func routesFor(airport: IATA) -> [IATA]? {
        return routes[airport]
    }
}

