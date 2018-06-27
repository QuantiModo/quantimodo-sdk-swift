//
// NotificationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class NotificationsAPI: APIBase {
    /**
     Get NotificationPreferences
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getNotificationPreferences(completion: ((error: ErrorType?) -> Void)) {
        getNotificationPreferencesWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get NotificationPreferences
     - GET /v3/notificationPreferences
     - Get NotificationPreferences

     - returns: RequestBuilder<Void> 
     */
    public class func getNotificationPreferencesWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/v3/notificationPreferences"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Post DeviceTokens
     
     - parameter body: (body) The platform and token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func postDeviceToken(body body: DeviceToken, completion: ((error: ErrorType?) -> Void)) {
        postDeviceTokenWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Post DeviceTokens
     - POST /v3/deviceTokens
     - Post user token for Android, iOS, or web push notifications
     
     - parameter body: (body) The platform and token 

     - returns: RequestBuilder<Void> 
     */
    public class func postDeviceTokenWithRequestBuilder(body body: DeviceToken) -> RequestBuilder<Void> {
        let path = "/v3/deviceTokens"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
