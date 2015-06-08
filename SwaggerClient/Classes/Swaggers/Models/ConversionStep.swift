//
// ConversionStep.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class ConversionStep: JSONEncodable {

    enum Operation: String { 
        case MULTIPLY = "MULTIPLY"
        case ADD = "ADD"
    }
    
    /**  */
    var operation: Operation!
    /**  */
    var value: Double!
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["operation"] = self.operation.rawValue
        nillableDictionary["value"] = self.value
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}