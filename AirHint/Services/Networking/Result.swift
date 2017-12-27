//
//  Result.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 25/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

enum Result<Value> {
    case success(Value)
    case failure(Error)
}
