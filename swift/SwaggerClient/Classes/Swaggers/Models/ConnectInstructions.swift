//
// ConnectInstructions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConnectInstructions: JSONEncodable {
    /** Create a form with these fields and post the key and user submitted value to the provided connect url */
    public var parameters: [AnyObject]?
    /** URL to open to connect */
    public var url: String?
    /** True if should open auth window in popup */
    public var usePopup: Bool?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["parameters"] = self.parameters?.encodeToJSON()
        nillableDictionary["url"] = self.url
        nillableDictionary["usePopup"] = self.usePopup
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
