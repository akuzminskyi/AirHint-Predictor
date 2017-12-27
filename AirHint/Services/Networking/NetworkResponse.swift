//
//  NetworkResponse.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 17/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

struct NetworkResponse: NetworkResponding {
    var result: Result<Data>
    let url: URL
}
