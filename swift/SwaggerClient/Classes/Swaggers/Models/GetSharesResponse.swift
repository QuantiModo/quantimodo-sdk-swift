//
// GetSharesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class GetSharesResponse: JSONEncodable {
    public var authorizedClients: AuthorizedClients?
    /** Can be used as body of help info popup */
    public var description: String?
    /** Can be used as title in help info popup */
    public var summary: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["authorizedClients"] = self.authorizedClients?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["summary"] = self.summary
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
