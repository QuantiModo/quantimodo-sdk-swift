//
// ConnectorsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit

extension SwaggerClientAPI {
    
    public class ConnectorsAPI: APIBase {
    
        /**
         
         List of Connectors
         
         - GET /v1/connectors/list
         - Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.
         - OAuth:
           - type: oauth2
           - name: oauth2
         - examples: [{contentType=application/json, example=[ {
  "connected" : "aeiou",
  "image" : "aeiou",
  "getItUrl" : "aeiou",
  "noDataYet" : true,
  "displayName" : "aeiou",
  "lastUpdate" : "",
  "name" : "aeiou",
  "totalMeasurementsInLastUpdate" : "",
  "id" : "",
  "connectInstructions" : "aeiou"
} ]}]

         :returns: Promise<Response<[Connector]>> 
         */
        public class func v1ConnectorsListGet() -> RequestBuilder<[Connector]> {
            let path = "/v1/connectors/list"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<[Connector]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Obtain a token from 3rd party data source
         
         - GET /v1/connectors/{connector}/connect
         - Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
         - OAuth:
           - type: oauth2
           - name: oauth2
         
         :param: connector (path) Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

         :returns: Promise<Response<Void>> 
         */
        public class func v1ConnectorsConnectorConnectGet(#connector: String) -> RequestBuilder<Void> {
            var path = "/v1/connectors/{connector}/connect"
            path = path.stringByReplacingOccurrencesOfString("{connector}", withString: "\(connector)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Delete stored connection info
         
         - GET /v1/connectors/{connector}/disconnect
         - The disconnect method deletes any stored tokens or connection information from the connectors database.
         - OAuth:
           - type: oauth2
           - name: oauth2
         
         :param: connector (path) Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

         :returns: Promise<Response<Void>> 
         */
        public class func v1ConnectorsConnectorDisconnectGet(#connector: String) -> RequestBuilder<Void> {
            var path = "/v1/connectors/{connector}/disconnect"
            path = path.stringByReplacingOccurrencesOfString("{connector}", withString: "\(connector)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get connector info for user
         
         - GET /v1/connectors/{connector}/info
         - Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
         - OAuth:
           - type: oauth2
           - name: oauth2
         - examples: [{contentType=application/json, example={
  "connected" : true,
  "id" : "",
  "history" : [ {
    "number_of_measurements" : "",
    "success" : true,
    "created_at" : "aeiou",
    "message" : "aeiou"
  } ],
  "error" : "aeiou"
}}]
         
         :param: connector (path) Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

         :returns: Promise<Response<ConnectorInfo>> 
         */
        public class func v1ConnectorsConnectorInfoGet(#connector: String) -> RequestBuilder<ConnectorInfo> {
            var path = "/v1/connectors/{connector}/info"
            path = path.stringByReplacingOccurrencesOfString("{connector}", withString: "\(connector)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<ConnectorInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Sync with data source
         
         - GET /v1/connectors/{connector}/update
         - The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
         - OAuth:
           - type: oauth2
           - name: oauth2
         
         :param: connector (path) Lowercase system name of the source application or device

         :returns: Promise<Response<Void>> 
         */
        public class func v1ConnectorsConnectorUpdateGet(#connector: String) -> RequestBuilder<Void> {
            var path = "/v1/connectors/{connector}/update"
            path = path.stringByReplacingOccurrencesOfString("{connector}", withString: "\(connector)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
    }
}