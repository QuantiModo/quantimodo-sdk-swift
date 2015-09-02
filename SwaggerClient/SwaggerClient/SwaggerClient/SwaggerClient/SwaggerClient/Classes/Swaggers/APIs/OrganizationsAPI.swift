//
// OrganizationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit

extension SwaggerClientAPI {
    
    public class OrganizationsAPI: APIBase {
    
        /**
         
         Get user tokens for existing users, create new users
         
         - POST /v1/organizations/{organizationId}/users
         - Get user tokens for existing users, create new users
         - examples: [{contentType=application/json, example={
  "code" : 123,
  "message" : "aeiou",
  "user" : {
    "access_token" : "aeiou",
    "_id" : 123
  }
}}]
         
         :param: organizationId (path) Organization ID
         :param: body (body) Provides organization token and user ID

         :returns: Promise<Response<UserTokenSuccessfulResponse>> 
         */
        public class func v1OrganizationsOrganizationIdUsersPost(#organizationId: Int, body: UserTokenRequest) -> RequestBuilder<UserTokenSuccessfulResponse> {
            var path = "/v1/organizations/{organizationId}/users"
            path = path.stringByReplacingOccurrencesOfString("{organizationId}", withString: "\(organizationId)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<UserTokenSuccessfulResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
    }
}