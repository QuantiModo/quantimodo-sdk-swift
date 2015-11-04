//
// VariableUserSourceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SwaggerClientAPI {
    
    public class VariableUserSourceAPI: APIBase {
    
        /**
         
         Get all VariableUserSources
         
         - GET /variableUserSources
         - Get all VariableUserSources
         - examples: [{example={
  "data" : [ {
    "timestamp" : 123,
    "updated_at" : "2015-11-03T22:25:27.467+0000",
    "source_id" : 123,
    "created_at" : "2015-11-03T22:25:27.467+0000",
    "earliest_measurement_time" : 123,
    "user_id" : 123,
    "variable_id" : 123,
    "latest_measurement_time" : 123
  } ],
  "success" : true
}, contentType=application/json}]
         
         - parameter variableId: (query) variable_id
         - parameter userId: (query) user_id
         - parameter timestamp: (query) timestamp
         - parameter createdAt: (query) created_at
         - parameter updatedAt: (query) updated_at
         - parameter limit: (query) limit
         - parameter offset: (query) offset
         - parameter sort: (query) sort

         - returns: RequestBuilder<Inline_response_200_25> 
         */
        public class func variableUserSourcesGet(variableId variableId: Int?, userId: Int?, timestamp: Int?, createdAt: String?, updatedAt: String?, limit: Int?, offset: Int?, sort: String?) -> RequestBuilder<Inline_response_200_25> {
            let path = "/variableUserSources"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "variableId": variableId,
                "userId": userId,
                "timestamp": timestamp,
                "createdAt": createdAt,
                "updatedAt": updatedAt,
                "limit": limit,
                "offset": offset,
                "sort": sort
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_25>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Store VariableUserSource
         
         - POST /variableUserSources
         - Store VariableUserSource
         - examples: [{example={
  "data" : {
    "timestamp" : 123,
    "updated_at" : "2015-11-03T22:25:27.470+0000",
    "source_id" : 123,
    "created_at" : "2015-11-03T22:25:27.470+0000",
    "earliest_measurement_time" : 123,
    "user_id" : 123,
    "variable_id" : 123,
    "latest_measurement_time" : 123
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter body: (body) VariableUserSource that should be stored

         - returns: RequestBuilder<Inline_response_200_26> 
         */
        public class func variableUserSourcesPost(body body: VariableUserSource?) -> RequestBuilder<Inline_response_200_26> {
            let path = "/variableUserSources"
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_26>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get VariableUserSource
         
         - GET /variableUserSources/{id}
         - Get VariableUserSource
         - examples: [{example={
  "data" : {
    "timestamp" : 123,
    "updated_at" : "2015-11-03T22:25:27.470+0000",
    "source_id" : 123,
    "created_at" : "2015-11-03T22:25:27.470+0000",
    "earliest_measurement_time" : 123,
    "user_id" : 123,
    "variable_id" : 123,
    "latest_measurement_time" : 123
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of VariableUserSource
         - parameter sourceId: (query) source id of VariableUserSource

         - returns: RequestBuilder<Inline_response_200_26> 
         */
        public class func variableUserSourcesIdGet(id id: Int, sourceId: Int) -> RequestBuilder<Inline_response_200_26> {
            var path = "/variableUserSources/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "sourceId": sourceId
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_26>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Update VariableUserSource
         
         - PUT /variableUserSources/{id}
         - Update VariableUserSource
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) variable_id of VariableUserSource
         - parameter sourceId: (query) source id of VariableUserSource
         - parameter body: (body) VariableUserSource that should be updated

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func variableUserSourcesIdPut(id id: Int, sourceId: Int, body: VariableUserSource?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/variableUserSources/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Delete VariableUserSource
         
         - DELETE /variableUserSources/{id}
         - Delete VariableUserSource
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) variable_id of VariableUserSource
         - parameter sourceId: (query) source id of VariableUserSource

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func variableUserSourcesIdDelete(id id: Int, sourceId: Int) -> RequestBuilder<Inline_response_200_2> {
            var path = "/variableUserSources/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "sourceId": sourceId
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: false)
        }
    
    }
}