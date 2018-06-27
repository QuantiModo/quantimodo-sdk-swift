//
// TrackingReminderNotificationTrackAllAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TrackingReminderNotificationTrackAllAction: JSONEncodable {
    /** Ex: trackAll */
    public var action: String?
    /** Ex: trackThreeRatingAction */
    public var callback: String?
    /** Ex: 3 */
    public var modifiedValue: Int32?
    /** Ex: Rate 3/5 for all */
    public var title: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["action"] = self.action
        nillableDictionary["callback"] = self.callback
        nillableDictionary["modifiedValue"] = self.modifiedValue?.encodeToJSON()
        nillableDictionary["title"] = self.title
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
