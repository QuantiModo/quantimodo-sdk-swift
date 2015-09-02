//
// UserTokenSuccessfulResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserTokenSuccessfulResponse: JSONEncodable {

    /** Status code */
    public var code: Int?
    /** Message */
    public var message: String?
    public var user: UserTokenSuccessfulResponseInnerUserField?
    

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["code"] = self.code
        nillableDictionary["message"] = self.message
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}