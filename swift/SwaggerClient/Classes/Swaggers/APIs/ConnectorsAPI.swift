//
// ConnectorsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ConnectorsAPI: APIBase {
    /**
     Mobile connect page
     
     - parameter accessToken: (query) User OAuth access token 
     - parameter userId: (query) User&#39;s id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectMobileGet(accessToken accessToken: String, userId: Int32? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1ConnectMobileGetWithRequestBuilder(accessToken: accessToken, userId: userId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Mobile connect page
     - GET /v1/connect/mobile
     - This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123
     
     - parameter accessToken: (query) User OAuth access token 
     - parameter userId: (query) User&#39;s id (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1ConnectMobileGetWithRequestBuilder(accessToken accessToken: String, userId: Int32? = nil) -> RequestBuilder<Void> {
        let path = "/v1/connect/mobile"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Obtain a token from 3rd party data source
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameConnectGet(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameConnectGetWithRequestBuilder(connectorName: connectorName, accessToken: accessToken, userId: userId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Obtain a token from 3rd party data source
     - GET /v1/connectors/{connectorName}/connect
     - Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1ConnectorsConnectorNameConnectGetWithRequestBuilder(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/v1/connectors/{connectorName}/connect"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Connection Instructions
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter parameters: (query) JSON Array of Parameters for the request to enable connector. 
     - parameter url: (query) URL which should be used to enable the connector. 
     - parameter usePopup: (query) Should use popup when enabling connector 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameConnectInstructionsGet(connectorName connectorName: String, parameters: String, url: String, usePopup: Bool, accessToken: String? = nil, userId: Int32? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameConnectInstructionsGetWithRequestBuilder(connectorName: connectorName, parameters: parameters, url: url, usePopup: usePopup, accessToken: accessToken, userId: userId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Connection Instructions
     - GET /v1/connectors/{connectorName}/connectInstructions
     - Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter parameters: (query) JSON Array of Parameters for the request to enable connector. 
     - parameter url: (query) URL which should be used to enable the connector. 
     - parameter usePopup: (query) Should use popup when enabling connector 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1ConnectorsConnectorNameConnectInstructionsGetWithRequestBuilder(connectorName connectorName: String, parameters: String, url: String, usePopup: Bool, accessToken: String? = nil, userId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/v1/connectors/{connectorName}/connectInstructions"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON(),
            "parameters": parameters,
            "url": url,
            "usePopup": usePopup
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Connect Parameter
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter displayName: (query) Name of the parameter that is user visible in the form 
     - parameter key: (query) Name of the property that the user has to enter such as username or password Connector (used in HTTP request) 
     - parameter placeholder: (query) Placeholder hint value for the parameter input tag. 
     - parameter type: (query) Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp 
     - parameter usePopup: (query) Should use popup when enabling connector 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter defaultValue: (query) Default parameter value (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameConnectParameterGet(connectorName connectorName: String, displayName: String, key: String, placeholder: String, type: String, usePopup: Bool, accessToken: String? = nil, userId: Int32? = nil, defaultValue: String? = nil, completion: ((data: ConnectorInstruction?, error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameConnectParameterGetWithRequestBuilder(connectorName: connectorName, displayName: displayName, key: key, placeholder: placeholder, type: type, usePopup: usePopup, accessToken: accessToken, userId: userId, defaultValue: defaultValue).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Connect Parameter
     - GET /v1/connectors/{connectorName}/connectParameter
     - Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example={
  "parameters" : [ "aeiou" ],
  "url" : "aeiou",
  "usePopup" : true
}}]
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter displayName: (query) Name of the parameter that is user visible in the form 
     - parameter key: (query) Name of the property that the user has to enter such as username or password Connector (used in HTTP request) 
     - parameter placeholder: (query) Placeholder hint value for the parameter input tag. 
     - parameter type: (query) Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp 
     - parameter usePopup: (query) Should use popup when enabling connector 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter defaultValue: (query) Default parameter value (optional)

     - returns: RequestBuilder<ConnectorInstruction> 
     */
    public class func v1ConnectorsConnectorNameConnectParameterGetWithRequestBuilder(connectorName connectorName: String, displayName: String, key: String, placeholder: String, type: String, usePopup: Bool, accessToken: String? = nil, userId: Int32? = nil, defaultValue: String? = nil) -> RequestBuilder<ConnectorInstruction> {
        var path = "/v1/connectors/{connectorName}/connectParameter"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON(),
            "defaultValue": defaultValue,
            "displayName": displayName,
            "key": key,
            "placeholder": placeholder,
            "type": type,
            "usePopup": usePopup
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ConnectorInstruction>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete stored connection info
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameDisconnectGet(connectorName connectorName: String, completion: ((error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameDisconnectGetWithRequestBuilder(connectorName: connectorName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete stored connection info
     - GET /v1/connectors/{connectorName}/disconnect
     - The disconnect method deletes any stored tokens or connection information from the connectors database.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 

     - returns: RequestBuilder<Void> 
     */
    public class func v1ConnectorsConnectorNameDisconnectGetWithRequestBuilder(connectorName connectorName: String) -> RequestBuilder<Void> {
        var path = "/v1/connectors/{connectorName}/disconnect"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get connector info for user
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameInfoGet(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil, completion: ((data: ConnectorInfo?, error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameInfoGetWithRequestBuilder(connectorName: connectorName, accessToken: accessToken, userId: userId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get connector info for user
     - GET /v1/connectors/{connectorName}/info
     - Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example={
  "connected" : true,
  "id" : "",
  "history" : [ {
    "createdAt" : "aeiou",
    "success" : true,
    "message" : "aeiou",
    "numberOfMeasurements" : ""
  } ],
  "error" : "aeiou"
}}]
     
     - parameter connectorName: (path) Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)

     - returns: RequestBuilder<ConnectorInfo> 
     */
    public class func v1ConnectorsConnectorNameInfoGetWithRequestBuilder(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil) -> RequestBuilder<ConnectorInfo> {
        var path = "/v1/connectors/{connectorName}/info"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ConnectorInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Sync with data source
     
     - parameter connectorName: (path) Lowercase system name of the source application or device 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsConnectorNameUpdateGet(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1ConnectorsConnectorNameUpdateGetWithRequestBuilder(connectorName: connectorName, accessToken: accessToken, userId: userId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Sync with data source
     - GET /v1/connectors/{connectorName}/update
     - The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     
     - parameter connectorName: (path) Lowercase system name of the source application or device 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1ConnectorsConnectorNameUpdateGetWithRequestBuilder(connectorName connectorName: String, accessToken: String? = nil, userId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/v1/connectors/{connectorName}/update"
        path = path.stringByReplacingOccurrencesOfString("{connectorName}", withString: "\(connectorName)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List of Connectors
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1ConnectorsListGet(completion: ((data: [Connector]?, error: ErrorType?) -> Void)) {
        v1ConnectorsListGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List of Connectors
     - GET /v1/connectors/list
     - A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example=[ {
  "connected" : "aeiou",
  "image" : "aeiou",
  "getItUrl" : "aeiou",
  "displayName" : "aeiou",
  "lastUpdate" : "",
  "name" : "aeiou",
  "totalMeasurementsInLastUpdate" : "",
  "id" : "",
  "connectInstructions" : "aeiou"
} ]}]

     - returns: RequestBuilder<[Connector]> 
     */
    public class func v1ConnectorsListGetWithRequestBuilder() -> RequestBuilder<[Connector]> {
        let path = "/v1/connectors/list"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Connector]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get embeddable connect javascript
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1IntegrationJsGet(accessToken accessToken: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1IntegrationJsGetWithRequestBuilder(accessToken: accessToken).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get embeddable connect javascript
     - GET /v1/integration.js
     - Get embeddable connect javascript. Usage:   - Embedding in applications with popups for 3rd-party authentication windows.     Use `qmSetupInPopup` function after connecting `connect.js`.   - Embedding in applications with popups for 3rd-party authentication windows.     Requires a selector to block. It will be embedded in this block.     Use `qmSetupOnPage` function after connecting `connect.js`.   - Embedding in mobile applications without popups for 3rd-party authentication.     Use `qmSetupOnMobile` function after connecting `connect.js`.     If using in a Cordova application call  `qmSetupOnIonic` function after connecting `connect.js`.
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1IntegrationJsGetWithRequestBuilder(accessToken accessToken: String? = nil) -> RequestBuilder<Void> {
        let path = "/v1/integration.js"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}