//
// UnitsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class UnitsAPI: APIBase {
    /**
     Get unit categories
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitCategoriesGet(completion: ((data: UnitCategory?, error: ErrorType?) -> Void)) {
        v1UnitCategoriesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get unit categories
     - GET /v1/unitCategories
     - Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou"
}}]

     - returns: RequestBuilder<UnitCategory> 
     */
    public class func v1UnitCategoriesGetWithRequestBuilder() -> RequestBuilder<UnitCategory> {
        let path = "/v1/unitCategories"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UnitCategory>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all available units
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter id: (query) Unit id (optional)
     - parameter unitName: (query) Unit name (optional)
     - parameter unitAbbreviatedName: (query) Restrict the results to a specific unit by providing the unit abbreviation. (optional)
     - parameter unitCategoryName: (query) Restrict the results to a specific unit category by providing the unit category name. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitsGet(accessToken accessToken: String? = nil, userId: Int32? = nil, id: Int32? = nil, unitName: String? = nil, unitAbbreviatedName: String? = nil, unitCategoryName: String? = nil, completion: ((data: [Unit]?, error: ErrorType?) -> Void)) {
        v1UnitsGetWithRequestBuilder(accessToken: accessToken, userId: userId, id: id, unitName: unitName, unitAbbreviatedName: unitAbbreviatedName, unitCategoryName: unitCategoryName).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get all available units
     - GET /v1/units
     - Get all available units
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example=[ {
  "minimumAllowedValue" : 1.3579000000000001069366817318950779736042022705078125,
  "name" : "aeiou",
  "category" : "aeiou",
  "abbreviatedName" : "aeiou",
  "conversionSteps" : [ {
    "operation" : "aeiou",
    "value" : 1.3579000000000001069366817318950779736042022705078125
  } ],
  "maximumAllowedValue" : 1.3579000000000001069366817318950779736042022705078125
} ]}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter id: (query) Unit id (optional)
     - parameter unitName: (query) Unit name (optional)
     - parameter unitAbbreviatedName: (query) Restrict the results to a specific unit by providing the unit abbreviation. (optional)
     - parameter unitCategoryName: (query) Restrict the results to a specific unit category by providing the unit category name. (optional)

     - returns: RequestBuilder<[Unit]> 
     */
    public class func v1UnitsGetWithRequestBuilder(accessToken accessToken: String? = nil, userId: Int32? = nil, id: Int32? = nil, unitName: String? = nil, unitAbbreviatedName: String? = nil, unitCategoryName: String? = nil) -> RequestBuilder<[Unit]> {
        let path = "/v1/units"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON(),
            "id": id?.encodeToJSON(),
            "unitName": unitName,
            "unitAbbreviatedName": unitAbbreviatedName,
            "unitCategoryName": unitCategoryName
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Unit]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Units for Variable
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter unitName: (query) Name of Unit you want to retrieve (optional)
     - parameter unitAbbreviatedName: (query) Abbreviated Unit Name of the unit you want (optional)
     - parameter unitCategoryName: (query) Name of the category you want units for (optional)
     - parameter variable: (query) Name of the variable you want units for (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitsVariableGet(accessToken accessToken: String? = nil, userId: Int32? = nil, unitName: String? = nil, unitAbbreviatedName: String? = nil, unitCategoryName: String? = nil, variable: String? = nil, completion: ((data: [Unit]?, error: ErrorType?) -> Void)) {
        v1UnitsVariableGetWithRequestBuilder(accessToken: accessToken, userId: userId, unitName: unitName, unitAbbreviatedName: unitAbbreviatedName, unitCategoryName: unitCategoryName, variable: variable).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Units for Variable
     - GET /v1/unitsVariable
     - Get a list of all possible units to use for a given variable
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: access_token
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{contentType=application/json, example=[ {
  "minimumAllowedValue" : 1.3579000000000001069366817318950779736042022705078125,
  "name" : "aeiou",
  "category" : "aeiou",
  "abbreviatedName" : "aeiou",
  "conversionSteps" : [ {
    "operation" : "aeiou",
    "value" : 1.3579000000000001069366817318950779736042022705078125
  } ],
  "maximumAllowedValue" : 1.3579000000000001069366817318950779736042022705078125
} ]}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter userId: (query) User&#39;s id (optional)
     - parameter unitName: (query) Name of Unit you want to retrieve (optional)
     - parameter unitAbbreviatedName: (query) Abbreviated Unit Name of the unit you want (optional)
     - parameter unitCategoryName: (query) Name of the category you want units for (optional)
     - parameter variable: (query) Name of the variable you want units for (optional)

     - returns: RequestBuilder<[Unit]> 
     */
    public class func v1UnitsVariableGetWithRequestBuilder(accessToken accessToken: String? = nil, userId: Int32? = nil, unitName: String? = nil, unitAbbreviatedName: String? = nil, unitCategoryName: String? = nil, variable: String? = nil) -> RequestBuilder<[Unit]> {
        let path = "/v1/unitsVariable"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "userId": userId?.encodeToJSON(),
            "unitName": unitName,
            "unitAbbreviatedName": unitAbbreviatedName,
            "unitCategoryName": unitCategoryName,
            "variable": variable
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Unit]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}