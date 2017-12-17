//
//  Airlining.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 16/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol Airlining {
    var name: String { get }
    var routesUrl: URL { get }
    var airhitId: String { get }
}
