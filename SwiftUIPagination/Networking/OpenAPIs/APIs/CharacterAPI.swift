//
// CharacterAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class CharacterAPI {
    /**
     Character list
     
     - parameter page: (query) The page number of objects to return. Defaults to 0. (optional)
     - parameter name: (query) Chracter name. (optional)
     - parameter status: (query) Character status. (optional)
     - parameter gender: (query) Character gender. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func charactersGet(page: Int? = nil, name: String? = nil, status: LivingStatus? = nil, gender: Gender? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CharacterList?,_ error: Error?) -> Void)) {
        charactersGetWithRequestBuilder(page: page, name: name, status: status, gender: gender).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Character list
     - GET /character/
     - parameter page: (query) The page number of objects to return. Defaults to 0. (optional)
     - parameter name: (query) Chracter name. (optional)
     - parameter status: (query) Character status. (optional)
     - parameter gender: (query) Character gender. (optional)
     - returns: RequestBuilder<CharacterList> 
     */
    open class func charactersGetWithRequestBuilder(page: Int? = nil, name: String? = nil, status: LivingStatus? = nil, gender: Gender? = nil) -> RequestBuilder<CharacterList> {
        let path = "/character/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "name": name?.encodeToJSON(), 
            "status": status?.encodeToJSON(), 
            "gender": gender?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CharacterList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
