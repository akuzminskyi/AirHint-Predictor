//
//  ServiceAssembly.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 17/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Foundation

import Foundation
import Swinject
import SwinjectStoryboard

class ServiceAssembly: Assembly {
    func assemble(container: Container) {
        container.register(NetworkServicing.self, factory: { resolver in
            return URLSessionNetwork()
        }).inObjectScope(.container)
    }
}
