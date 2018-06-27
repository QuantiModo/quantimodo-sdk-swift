//
// TrackingReminderNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TrackingReminderNotification: JSONEncodable {
    public enum CombinationOperation: String { 
        case Mean = "MEAN"
        case Sum = "SUM"
    }
    public var actionArray: [TrackingReminderNotificationAction]?
    public var availableUnits: [Unit]?
    /** Your QuantiModo client id can be obtained by creating an app at https://builder.quantimo.do */
    public var clientId: String?
    /** The way multiple measurements are aggregated over time */
    public var combinationOperation: CombinationOperation?
    /** Ex: 2017-07-29 20:49:54 UTC ISO 8601 YYYY-MM-DDThh:mm:ss */
    public var createdAt: String?
    /** Ex: Trader Joe&#39;s Bedtime Tea */
    public var displayName: String?
    /** Is the user specified default value or falls back to the last value in user unit. Good for initializing input fields */
    public var modifiedValue: Double?
    /** Ex: /5 */
    public var unitAbbreviatedName: String?
    /** Ex: 5 */
    public var unitCategoryId: Int32?
    /** Ex: Rating */
    public var unitCategoryName: String?
    /** Ex: 10 */
    public var unitId: Int32?
    /** Ex: 1 to 5 Rating */
    public var unitName: String?
    /** Default value to use for the measurement when tracking */
    public var defaultValue: Float?
    /** Ex: positive */
    public var description: String?
    /** True if the reminders should be delivered via email */
    public var email: Bool?
    /** Ex: 0 */
    public var fillingValue: Int32?
    /** Ex: ion-sad-outline */
    public var iconIcon: String?
    /** id for the specific PENDING tracking remidner */
    public var id: Int32?
    /** Ex: https://rximage.nlm.nih.gov/image/images/gallery/original/55111-0129-60_RXNAVIMAGE10_B051D81E.jpg */
    public var imageUrl: String?
    /** Ex: happiestFaceIsFive */
    public var inputType: String?
    /** Ex: ion-happy-outline */
    public var ionIcon: String?
    /** Ex: 3 */
    public var lastValue: Double?
    /** Ex: 1 */
    public var manualTracking: Bool?
    /** Ex: 5 */
    public var maximumAllowedValue: Int32?
    /** Ex: 1 */
    public var minimumAllowedValue: Int32?
    /** Ex: 3 */
    public var mostCommonValue: Double?
    /** True if the reminders should appear in the notification bar */
    public var notificationBar: Bool?
    /** Ex: UTC ISO 8601 YYYY-MM-DDThh:mm:ss */
    public var notifiedAt: String?
    /** Ex: 5 */
    public var numberOfUniqueValues: Int32?
    /** Indicates whether or not the variable is usually an outcome of interest such as a symptom or emotion */
    public var outcome: Bool?
    /** Ex: img/variable_categories/emotions.png */
    public var pngPath: String?
    /** Ex: https://quantimodo.quantimo.do/ionic/Modo/www/img/variable_categories/emotions.png */
    public var pngUrl: String?
    /** True if the reminders should appear as a popup notification */
    public var popUp: Bool?
    /** Link to associated product for purchase */
    public var productUrl: String?
    /** Ex: How is your overall mood? */
    public var question: String?
    /** Ex: 01-01-2018 */
    public var reminderEndTime: String?
    /** How often user should be reminded in seconds. Ex: 86400 */
    public var reminderFrequency: Int32?
    /** String identifier for the sound to accompany the reminder */
    public var reminderSound: String?
    /** Earliest time of day at which reminders should appear in UTC HH:MM:SS format */
    public var reminderStartTime: String?
    /** UTC ISO 8601 YYYY-MM-DDThh:mm:ss timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. */
    public var reminderTime: String?
    /** Ex: 4 */
    public var secondMostCommonValue: Double?
    /** Ex: 1 */
    public var secondToLastValue: Double?
    /** True if the reminders should be delivered via SMS */
    public var sms: Bool?
    /** Ex: https://quantimodo.quantimo.do/ionic/Modo/www/img/variable_categories/emotions.svg */
    public var svgUrl: String?
    /** Ex: 2 */
    public var thirdMostCommonValue: Double?
    /** Ex: 2 */
    public var thirdToLastValue: Double?
    /** Ex: Rate Overall Mood */
    public var title: String?
    /** Ex: 3 */
    public var total: Double?
    public var trackAllActions: [TrackingReminderNotificationTrackAllAction]?
    /** id for the repeating tracking remidner */
    public var trackingReminderId: Int32?
    /** Ex: https://rximage.nlm.nih.gov/image/images/gallery/original/55111-0129-60_RXNAVIMAGE10_B051D81E.jpg */
    public var trackingReminderImageUrl: String?
    /** Ex: 5072482 */
    public var trackingReminderNotificationId: Int32?
    /** UTC ISO 8601 YYYY-MM-DDThh:mm:ss timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. */
    public var trackingReminderNotificationTime: String?
    /** Ex: 1501534124 */
    public var trackingReminderNotificationTimeEpoch: Int32?
    /** Ex: 15:48:44 */
    public var trackingReminderNotificationTimeLocal: String?
    /** Ex: 8PM Sun, May 1 */
    public var trackingReminderNotificationTimeLocalHumanString: String?
    /** When the record in the database was last updated. Use UTC ISO 8601 YYYY-MM-DDThh:mm:ss  datetime format. Time zone should be UTC and not local. */
    public var updatedAt: String?
    /** ID of User */
    public var userId: Int32?
    /** Ex: /5 */
    public var userVariableUnitAbbreviatedName: String?
    /** Ex: 5 */
    public var userVariableUnitCategoryId: Int32?
    /** Ex: Rating */
    public var userVariableUnitCategoryName: String?
    /** Ex: 10 */
    public var userVariableUnitId: Int32?
    /** Ex: 1 to 5 Rating */
    public var userVariableUnitName: String?
    /** Ex: 1 */
    public var userVariableVariableCategoryId: Int32?
    /** Ex: Emotions */
    public var userVariableVariableCategoryName: String?
    /** Ex: positive */
    public var valence: String?
    /** Ex: 1 */
    public var variableCategoryId: Int32?
    /** Ex: https://maxcdn.icons8.com/Color/PNG/96/Cinema/theatre_mask-96.png */
    public var variableCategoryImageUrl: String?
    /** Name of the variable category to be used when sending measurements */
    public var variableCategoryName: String?
    /** Id for the variable to be tracked */
    public var variableId: Int32?
    /** Ex: https://image.png */
    public var variableImageUrl: String?
    /** Name of the variable to be used when sending measurements */
    public var variableName: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["actionArray"] = self.actionArray?.encodeToJSON()
        nillableDictionary["availableUnits"] = self.availableUnits?.encodeToJSON()
        nillableDictionary["clientId"] = self.clientId
        nillableDictionary["combinationOperation"] = self.combinationOperation?.rawValue
        nillableDictionary["createdAt"] = self.createdAt
        nillableDictionary["displayName"] = self.displayName
        nillableDictionary["modifiedValue"] = self.modifiedValue
        nillableDictionary["unitAbbreviatedName"] = self.unitAbbreviatedName
        nillableDictionary["unitCategoryId"] = self.unitCategoryId?.encodeToJSON()
        nillableDictionary["unitCategoryName"] = self.unitCategoryName
        nillableDictionary["unitId"] = self.unitId?.encodeToJSON()
        nillableDictionary["unitName"] = self.unitName
        nillableDictionary["defaultValue"] = self.defaultValue
        nillableDictionary["description"] = self.description
        nillableDictionary["email"] = self.email
        nillableDictionary["fillingValue"] = self.fillingValue?.encodeToJSON()
        nillableDictionary["iconIcon"] = self.iconIcon
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["imageUrl"] = self.imageUrl
        nillableDictionary["inputType"] = self.inputType
        nillableDictionary["ionIcon"] = self.ionIcon
        nillableDictionary["lastValue"] = self.lastValue
        nillableDictionary["manualTracking"] = self.manualTracking
        nillableDictionary["maximumAllowedValue"] = self.maximumAllowedValue?.encodeToJSON()
        nillableDictionary["minimumAllowedValue"] = self.minimumAllowedValue?.encodeToJSON()
        nillableDictionary["mostCommonValue"] = self.mostCommonValue
        nillableDictionary["notificationBar"] = self.notificationBar
        nillableDictionary["notifiedAt"] = self.notifiedAt
        nillableDictionary["numberOfUniqueValues"] = self.numberOfUniqueValues?.encodeToJSON()
        nillableDictionary["outcome"] = self.outcome
        nillableDictionary["pngPath"] = self.pngPath
        nillableDictionary["pngUrl"] = self.pngUrl
        nillableDictionary["popUp"] = self.popUp
        nillableDictionary["productUrl"] = self.productUrl
        nillableDictionary["question"] = self.question
        nillableDictionary["reminderEndTime"] = self.reminderEndTime
        nillableDictionary["reminderFrequency"] = self.reminderFrequency?.encodeToJSON()
        nillableDictionary["reminderSound"] = self.reminderSound
        nillableDictionary["reminderStartTime"] = self.reminderStartTime
        nillableDictionary["reminderTime"] = self.reminderTime
        nillableDictionary["secondMostCommonValue"] = self.secondMostCommonValue
        nillableDictionary["secondToLastValue"] = self.secondToLastValue
        nillableDictionary["sms"] = self.sms
        nillableDictionary["svgUrl"] = self.svgUrl
        nillableDictionary["thirdMostCommonValue"] = self.thirdMostCommonValue
        nillableDictionary["thirdToLastValue"] = self.thirdToLastValue
        nillableDictionary["title"] = self.title
        nillableDictionary["total"] = self.total
        nillableDictionary["trackAllActions"] = self.trackAllActions?.encodeToJSON()
        nillableDictionary["trackingReminderId"] = self.trackingReminderId?.encodeToJSON()
        nillableDictionary["trackingReminderImageUrl"] = self.trackingReminderImageUrl
        nillableDictionary["trackingReminderNotificationId"] = self.trackingReminderNotificationId?.encodeToJSON()
        nillableDictionary["trackingReminderNotificationTime"] = self.trackingReminderNotificationTime
        nillableDictionary["trackingReminderNotificationTimeEpoch"] = self.trackingReminderNotificationTimeEpoch?.encodeToJSON()
        nillableDictionary["trackingReminderNotificationTimeLocal"] = self.trackingReminderNotificationTimeLocal
        nillableDictionary["trackingReminderNotificationTimeLocalHumanString"] = self.trackingReminderNotificationTimeLocalHumanString
        nillableDictionary["updatedAt"] = self.updatedAt
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["userVariableUnitAbbreviatedName"] = self.userVariableUnitAbbreviatedName
        nillableDictionary["userVariableUnitCategoryId"] = self.userVariableUnitCategoryId?.encodeToJSON()
        nillableDictionary["userVariableUnitCategoryName"] = self.userVariableUnitCategoryName
        nillableDictionary["userVariableUnitId"] = self.userVariableUnitId?.encodeToJSON()
        nillableDictionary["userVariableUnitName"] = self.userVariableUnitName
        nillableDictionary["userVariableVariableCategoryId"] = self.userVariableVariableCategoryId?.encodeToJSON()
        nillableDictionary["userVariableVariableCategoryName"] = self.userVariableVariableCategoryName
        nillableDictionary["valence"] = self.valence
        nillableDictionary["variableCategoryId"] = self.variableCategoryId?.encodeToJSON()
        nillableDictionary["variableCategoryImageUrl"] = self.variableCategoryImageUrl
        nillableDictionary["variableCategoryName"] = self.variableCategoryName
        nillableDictionary["variableId"] = self.variableId?.encodeToJSON()
        nillableDictionary["variableImageUrl"] = self.variableImageUrl
        nillableDictionary["variableName"] = self.variableName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
