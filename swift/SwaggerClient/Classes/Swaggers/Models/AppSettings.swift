//
// AppSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AppSettings: JSONEncodable {
    /**  */
    public var additionalSettings: AnyObject?
    /**  */
    public var appDescription: String?
    /**  */
    public var appDesign: AnyObject?
    /**  */
    public var appDisplayName: String?
    /**  */
    public var appStatus: AnyObject?
    /**  */
    public var appType: String?
    /**  */
    public var buildEnabled: String?
    /**  */
    public var clientId: String?
    /**  */
    public var clientSecret: String?
    /**  */
    public var collaborators: [User]?
    /**  */
    public var createdAt: String?
    /**  */
    public var userId: String?
    /**  */
    public var users: [User]?
    /**  */
    public var redirectUri: String?
    /**  */
    public var companyName: String?
    /**  */
    public var homepageUrl: String?
    /**  */
    public var iconUrl: String?
    /**  */
    public var longDescription: String?
    /**  */
    public var splashScreen: String?
    /**  */
    public var textLogo: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additionalSettings"] = self.additionalSettings
        nillableDictionary["appDescription"] = self.appDescription
        nillableDictionary["appDesign"] = self.appDesign
        nillableDictionary["appDisplayName"] = self.appDisplayName
        nillableDictionary["appStatus"] = self.appStatus
        nillableDictionary["appType"] = self.appType
        nillableDictionary["buildEnabled"] = self.buildEnabled
        nillableDictionary["clientId"] = self.clientId
        nillableDictionary["clientSecret"] = self.clientSecret
        nillableDictionary["collaborators"] = self.collaborators?.encodeToJSON()
        nillableDictionary["createdAt"] = self.createdAt
        nillableDictionary["userId"] = self.userId
        nillableDictionary["users"] = self.users?.encodeToJSON()
        nillableDictionary["redirectUri"] = self.redirectUri
        nillableDictionary["companyName"] = self.companyName
        nillableDictionary["homepageUrl"] = self.homepageUrl
        nillableDictionary["iconUrl"] = self.iconUrl
        nillableDictionary["longDescription"] = self.longDescription
        nillableDictionary["splashScreen"] = self.splashScreen
        nillableDictionary["textLogo"] = self.textLogo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
