//
//  Easyjet.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 25/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

final class Easyjet: BaseAirlining {
    static let name = "easyJet"
    static let routesType: Routes = .specified(routeURL: URL(string:"http://www.airhint.com/static/data/easyjet_routes.json")!)
    static let airhintId = "easyjet"

    private var routes = [IATA: [IATA]]()
}

extension Easyjet: Airlining {
    func set(routes:[IATA], forAirport airport: IATA) {
        self.routes[airport] = routes
    }
    
    func routesFor(airport: IATA) -> [IATA]? {
        return routes[airport]
    }
}
