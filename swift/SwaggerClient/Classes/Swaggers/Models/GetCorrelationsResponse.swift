//
// GetCorrelationsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class GetCorrelationsResponse: JSONEncodable {
    public var data: GetCorrelationsDataResponse?
    /** Can be used as body of help info popup */
    public var description: String?
    /** Can be used as title in help info popup */
    public var summary: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["summary"] = self.summary
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
