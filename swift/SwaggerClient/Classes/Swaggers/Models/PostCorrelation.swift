//
// PostCorrelation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PostCorrelation: JSONEncodable {
    /** Cause variable name */
    public var causeVariableName: String?
    /** Correlation value */
    public var correlation: Double?
    /** Effect variable name */
    public var effectVariableName: String?
    /** Vote: 0 or 1 */
    public var vote: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["causeVariableName"] = self.causeVariableName
        nillableDictionary["correlation"] = self.correlation
        nillableDictionary["effectVariableName"] = self.effectVariableName
        nillableDictionary["vote"] = self.vote?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
