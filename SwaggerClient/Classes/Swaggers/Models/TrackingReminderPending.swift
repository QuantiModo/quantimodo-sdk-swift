//
// TrackingReminderPending.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TrackingReminderPending: JSONEncodable {

    public enum CombinationOperation: String { 
        case Mean = "MEAN"
        case Sum = "SUM"
    }
    
    /** id for the specific PENDING tracking remidner */
    public var id: Int?
    /** id for the repeating tracking remidner */
    public var trackingReminderId: Int?
    /** clientId */
    public var clientId: String?
    /** ID of User */
    public var userId: Int?
    /** Id for the variable to be tracked */
    public var variableId: Int?
    /** ISO 8601 timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. */
    public var pendingReminderTime: NSDate?
    /** Default value to use for the measurement when tracking */
    public var defaultValue: Float?
    /** String identifier for the sound to accompany the reminder */
    public var reminderSound: String?
    /** True if the reminders should appear as a popup notification */
    public var popUp: Bool?
    /** True if the reminders should be delivered via SMS */
    public var sms: Bool?
    /** True if the reminders should be delivered via email */
    public var email: Bool?
    /** True if the reminders should appear in the notification bar */
    public var notificationBar: Bool?
    /** When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local. */
    public var updatedAt: NSDate?
    /** Name of the variable to be used when sending measurements */
    public var variableName: String?
    /** Name of the variable category to be used when sending measurements */
    public var variableCategoryName: String?
    /** Abbreviated name of the unit to be used when sending measurements */
    public var abbreviatedUnitName: String?
    /** The way multiple measurements are aggregated over time */
    public var combinationOperation: CombinationOperation?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["trackingReminderId"] = self.trackingReminderId
        nillableDictionary["clientId"] = self.clientId
        nillableDictionary["userId"] = self.userId
        nillableDictionary["variableId"] = self.variableId
        nillableDictionary["pendingReminderTime"] = self.pendingReminderTime?.encodeToJSON()
        nillableDictionary["defaultValue"] = self.defaultValue
        nillableDictionary["reminderSound"] = self.reminderSound
        nillableDictionary["popUp"] = self.popUp
        nillableDictionary["sms"] = self.sms
        nillableDictionary["email"] = self.email
        nillableDictionary["notificationBar"] = self.notificationBar
        nillableDictionary["updatedAt"] = self.updatedAt?.encodeToJSON()
        nillableDictionary["variableName"] = self.variableName
        nillableDictionary["variableCategoryName"] = self.variableCategoryName
        nillableDictionary["abbreviatedUnitName"] = self.abbreviatedUnitName
        nillableDictionary["combinationOperation"] = self.combinationOperation?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}