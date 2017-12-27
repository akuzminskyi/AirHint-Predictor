//
//  URLSessionNetwork.swift
//  AirHint
//
//  Created by Andrii Kuzminskyi on 17/12/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import Alamofire

final class URLSessionNetwork: NetworkServicing {
    func execute(request: NetworkRequesting, with complectionBlock: @escaping (NetworkResponding)->Void) {
        Alamofire.request(request.url).responseData { (response) in
            let result = Result<Data>(alamofireResult: response.result)
            
            let response = NetworkResponse(result: result,
                                           url: request.url)
            complectionBlock(response)
        }
    }
}

private extension Result {
    init(alamofireResult result: Alamofire.Result<Value>) {
        switch result {
        case .success(let value):
            self = .success(value)
        case .failure(let error):
            self = .failure(error)
        }
    }
}
