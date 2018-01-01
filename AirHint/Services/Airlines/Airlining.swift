//
//  Airlining.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

enum Routes{
    case all
    case specified(routeURL: URL)
}

/// The protocol only for setuping Airline
protocol BaseAirlining {
    static var name: String { get }
    static var routesType: Routes { get }
    static var airhintId: String { get }
}

protocol Airlining: BaseAirlining {
    func set(routes:[IATA], forAirport airport: IATA)
    
    ///
    ///
    /// - Parameter airport: airport IATA code
    /// - Returns: array of IATA airports if the provided IATA code exist in the airlines list
    func routesFor(airport: IATA) -> [IATA]?
}
