//
//  NetworkServicing.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 17/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

protocol NetworkServicing {
    func execute(request: NetworkRequesting, with complectionBlock: @escaping (NetworkResponding)->Void)
}
