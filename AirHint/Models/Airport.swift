//
//  Airport.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

class Airport: Airporting {
    let code: IATA
    let name: String?

    required init(code: IATA, name: String?) {
        self.code = code
        self.name = name
    }
}

extension Airport {
    var displayName: String {
        return name ?? code
    }
}

extension Airport: CustomDebugStringConvertible {
    var debugDescription: String {
        return "\(code) - \(name ?? "nil")"
    }
}
