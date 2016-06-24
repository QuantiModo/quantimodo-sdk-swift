//
// UserTag.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserTag: JSONEncodable {
    /** This is the id of the variable being tagged with an ingredient or something. */
    public var taggedVariableId: Int32?
    /** This is the id of the ingredient variable whose value is determined based on the value of the tagged variable. */
    public var tagVariableId: Int32?
    /** Number by which we multiply the tagged variable value to obtain the tag variable (ingredient) value */
    public var conversionFactor: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["taggedVariableId"] = self.taggedVariableId?.encodeToJSON()
        nillableDictionary["tagVariableId"] = self.tagVariableId?.encodeToJSON()
        nillableDictionary["conversionFactor"] = self.conversionFactor
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}