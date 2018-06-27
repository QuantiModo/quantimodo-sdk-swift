//
// DataSource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class DataSource: JSONEncodable {
    /** Ex: true */
    public var affiliate: Bool?
    /** Ex: ba7d0c12432650e23b3ce924ae2d21e2ff59e7e4e28650759633700af7ed0a30 */
    public var connectorClientId: String?
    /** Ex: Foods */
    public var defaultVariableCategoryName: String?
    /** Ex: QuantiModo */
    public var displayName: String?
    /** Ex: 0 */
    public var enabled: Int32?
    /** Ex: https://quantimo.do */
    public var getItUrl: String?
    /** Ex: 72 */
    public var id: Int32?
    /** Ex: https://quantimodo.quantimo.do/ionic/Modo/www/img/logos/quantimodo-logo-qm-rainbow-200-200.png */
    public var image: String?
    /** Ex: &lt;a href&#x3D;\&quot;https://quantimo.do\&quot;&gt;&lt;img id&#x3D;\&quot;quantimodo_image\&quot; title&#x3D;\&quot;QuantiModo\&quot; src&#x3D;\&quot;https://quantimodo.quantimo.do/ionic/Modo/www/img/logos/quantimodo-logo-qm-rainbow-200-200.png\&quot; alt&#x3D;\&quot;QuantiModo\&quot;&gt;&lt;/a&gt; */
    public var imageHtml: String?
    /** Ex: &lt;a href&#x3D;\&quot;https://quantimo.do\&quot;&gt;QuantiModo&lt;/a&gt; */
    public var linkedDisplayNameHtml: String?
    /** Ex: QuantiModo is a Chrome extension, Android app, iOS app, and web app that allows you to easily track mood, symptoms, or any outcome you want to optimize in a fraction of a second.  You can also import your data from over 30 other apps and devices like Fitbit, Rescuetime, Jawbone Up, Withings, Facebook, Github, Google Calendar, Runkeeper, MoodPanda, Slice, Google Fit, and more.  QuantiModo then analyzes your data to identify which hidden factors are most likely to be influencing your mood or symptoms and their optimal daily values. */
    public var longDescription: String?
    /** Ex: quantimodo */
    public var name: String?
    /** Ex: Tracks anything */
    public var shortDescription: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["affiliate"] = self.affiliate
        nillableDictionary["connectorClientId"] = self.connectorClientId
        nillableDictionary["defaultVariableCategoryName"] = self.defaultVariableCategoryName
        nillableDictionary["displayName"] = self.displayName
        nillableDictionary["enabled"] = self.enabled?.encodeToJSON()
        nillableDictionary["getItUrl"] = self.getItUrl
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["image"] = self.image
        nillableDictionary["imageHtml"] = self.imageHtml
        nillableDictionary["linkedDisplayNameHtml"] = self.linkedDisplayNameHtml
        nillableDictionary["longDescription"] = self.longDescription
        nillableDictionary["name"] = self.name
        nillableDictionary["shortDescription"] = self.shortDescription
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
