//
//  NetworkServicingSpec.swift
//  AirHintTests
//
//  Created by Andrii Kuzminskyi on 27/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Quick
import Nimble
import Swinject
@testable import AirHint

class NetworkServicingSpec: QuickSpec {
    private struct MockNetworkResponse: NetworkResponding {
        var result: Result<Data>
        let url: URL
    }
    
    private struct MockNetworkRequest :NetworkRequesting {
        var url: URL
    }
    
    private struct MockNetworkService: NetworkServicing {
        func execute(request: NetworkRequesting, with complectionBlock: @escaping (NetworkResponding) -> Void) {
            do {
                let data = try Data(contentsOf: request.url)
                complectionBlock(MockNetworkResponse(result: Result.success(data), url: request.url))
            } catch (let error) {
                complectionBlock(MockNetworkResponse(result: Result.failure(error), url: request.url))
            }
        }
    }
    override func spec() {
        let container = Container()
        beforeEach {
            container.register(NetworkServicing.self, factory: { (resolver) -> NetworkServicing in
                return MockNetworkService()
            }).inObjectScope(.container)
        }
        
        
        describe("An network service") {
            var networkService: NetworkServicing?
            beforeEach {
                networkService = container.resolve(NetworkServicing.self)
            }
            
            it("should exist in DI container") {
                expect(networkService).toNot(beNil())
            }
            
            context("executing valide URL request", {
                var request: NetworkRequesting!
                var response: NetworkResponding!
                beforeEach {
                    let bundle = Bundle(for: type(of: self))
                    let pathToTestData = bundle.path(forResource: "NetworkServicingTestingData", ofType: "json")!
                    request = MockNetworkRequest(url: URL(fileURLWithPath: pathToTestData))
                    networkService?.execute(request: request, with: { networkresponse in
                        response = networkresponse
                    })
                }
                
                it("should return Result.success in response") {
                    expect({
                        guard case Result.success(_) = response.result else {
                            return .failed(reason: "wrong enum case")
                        }
                        return .succeeded
                    }).to(succeed())
                }
                it("should consist correct data in success block") {
                    guard case Result.success(let data) = response.result else {
                        fail("wrong enum case")
                        return
                    }
                    
                    expect(data.hashValue).to(equal(14707176))
                }
                it("should consist the same URL in response") {
                    expect(response.url).to(equal(request.url))
                }
            })
            context("executing invalide URL request", {
                var response: NetworkResponding!
                beforeEach {
                    let request = MockNetworkRequest(url: URL(string:"blank")!)
                    networkService?.execute(request: request, with: { networkresponse in
                        response = networkresponse
                    })
                }
                
                it("should return Result.failure in response") {
                    expect({
                        guard case Result.failure(_) = response.result else {
                            return .failed(reason: "wrong enum case")
                        }
                        return .succeeded
                    }).to(succeed())
                }
            })
        }
    }
}
