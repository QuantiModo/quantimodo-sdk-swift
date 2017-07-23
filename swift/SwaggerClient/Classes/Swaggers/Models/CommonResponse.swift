//
// CommonResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CommonResponse: JSONEncodable {
    /** Status code */
    public var status: Int32?
    /** Message */
    public var message: String?
    public var success: Bool?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["status"] = self.status?.encodeToJSON()
        nillableDictionary["message"] = self.message
        nillableDictionary["success"] = self.success
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}