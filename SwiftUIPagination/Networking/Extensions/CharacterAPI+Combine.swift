//
//  CharacterAPI+Combine.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation
import Combine

extension CharacterAPI {
    
    class func charactersGet(
        page: Int? = nil,
        name: String? = nil,
        status: LivingStatus? = nil,
        gender: Gender? = nil,
        apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Future<CharacterList, Error>
    {
        return Future<CharacterList, Error> { seal in
            CharacterAPI.charactersGet(page: page, name: name, status: status, gender: gender, apiResponseQueue: apiResponseQueue) { (characterList, error) in
                if let list = characterList {
                    seal(.success(list))
                } else {
                    let unwrappedError = error ?? AppError.unexpected("Neither data nor error were returned")
                    seal(.failure(unwrappedError))
                }
            }
        }
    }
}
