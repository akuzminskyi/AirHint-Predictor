//
//  NetworkResponding.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 17/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol NetworkResponding {
    var result: Result<Data> { get }
    var url: URL { get }
}
