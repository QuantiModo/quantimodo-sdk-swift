//
// MeasurementSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class MeasurementSet: JSONEncodable {

    enum CombinationOperation: String { 
        case MEAN = "MEAN"
        case SUM = "SUM"
    }
    
    /** Array of timestamps, values, and optional notes */
    var measurements: [ValueObject]!
    /** ORIGINAL name of the variable for which we are creating the measurement records */
    var name: String!
    /** Name of the application or device used to record the measurement values */
    var source: String!
    /** Variable category name */
    var category: String?
    /** Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot; */
    var combinationOperation: CombinationOperation?
    /** Unit of measurement */
    var unit: String!
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["measurements"] = self.measurements.encode()
        nillableDictionary["name"] = self.name
        nillableDictionary["source"] = self.source
        nillableDictionary["category"] = self.category
        nillableDictionary["combinationOperation"] = self.combinationOperation?.rawValue
        nillableDictionary["unit"] = self.unit
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}