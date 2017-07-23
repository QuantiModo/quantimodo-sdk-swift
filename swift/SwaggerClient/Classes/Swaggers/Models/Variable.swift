//
// Variable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Variable: JSONEncodable {
    public enum CombinationOperation: String { 
        case Mean = "MEAN"
        case Sum = "SUM"
    }
    /** Variable ID */
    public var id: Int32?
    /** User-defined variable display name. */
    public var name: String?
    /** Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. */
    public var category: String?
    /** Abbreviated name of the default unit for the variable */
    public var unitAbbreviatedName: String?
    /** Id of the default unit for the variable */
    public var abbreviatedUnitId: Int32?
    /** Comma-separated list of source names to limit variables to those sources */
    public var sources: String?
    /** The minimum allowed value for measurements. While you can record a value below this minimum, it will be excluded from the correlation analysis. */
    public var minimumAllowedValue: Double?
    /** The maximum allowed value for measurements. While you can record a value above this maximum, it will be excluded from the correlation analysis. */
    public var maximumAllowedValue: Double?
    /** Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot;. SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. */
    public var combinationOperation: CombinationOperation?
    /** When it comes to analysis to determine the effects of this variable, knowing when it did not occur is as important as knowing when it did occur. For example, if you are tracking a medication, it is important to know when you did not take it, but you do not have to log zero values for all the days when you haven&#39;t taken it. Hence, you can specify a filling value (typically 0) to insert whenever data is missing. */
    public var fillingValue: Double?
    /** The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables. */
    public var joinWith: String?
    /** Array of Variables that are joined with this Variable */
    public var joinedVariables: [Variable]?
    /** Id of the parent variable if this variable has any parent */
    public var parent: Int32?
    /** Array of Variables that are sub variables to this Variable */
    public var subVariables: [Variable]?
    /** The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. */
    public var onsetDelay: Int32?
    /** The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. */
    public var durationOfAction: Int32?
    /** Earliest measurement time */
    public var earliestMeasurementTime: Int32?
    /** Latest measurement time */
    public var latestMeasurementTime: Int32?
    /** When this variable or its settings were last updated */
    public var updated: Int32?
    /** A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user. */
    public var causeOnly: Int32?
    /** Number of correlations */
    public var numberOfCorrelations: Int32?
    /** Outcome variables (those with &#x60;outcome&#x60; &#x3D;&#x3D; 1) are variables for which a human would generally want to identify the influencing factors. These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables. */
    public var outcome: Int32?
    /** The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the rawMeasurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there&#39;s not enough new data to make a significant difference in the correlation. */
    public var rawMeasurementsAtLastAnalysis: Int32?
    /** Number of measurements */
    public var numberOfRawMeasurements: Int32?
    /** Last unit */
    public var lastUnit: String?
    /** Last value */
    public var lastValue: Int32?
    /** Most common value */
    public var mostCommonValue: Int32?
    /** Most common unit */
    public var mostCommonUnit: String?
    /** Last source */
    public var lastSource: Int32?
    /**  */
    public var imageUrl: String?
    /**  */
    public var ionIcon: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["category"] = self.category
        nillableDictionary["unitAbbreviatedName"] = self.unitAbbreviatedName
        nillableDictionary["abbreviatedUnitId"] = self.abbreviatedUnitId?.encodeToJSON()
        nillableDictionary["sources"] = self.sources
        nillableDictionary["minimumAllowedValue"] = self.minimumAllowedValue
        nillableDictionary["maximumAllowedValue"] = self.maximumAllowedValue
        nillableDictionary["combinationOperation"] = self.combinationOperation?.rawValue
        nillableDictionary["fillingValue"] = self.fillingValue
        nillableDictionary["joinWith"] = self.joinWith
        nillableDictionary["joinedVariables"] = self.joinedVariables?.encodeToJSON()
        nillableDictionary["parent"] = self.parent?.encodeToJSON()
        nillableDictionary["subVariables"] = self.subVariables?.encodeToJSON()
        nillableDictionary["onsetDelay"] = self.onsetDelay?.encodeToJSON()
        nillableDictionary["durationOfAction"] = self.durationOfAction?.encodeToJSON()
        nillableDictionary["earliestMeasurementTime"] = self.earliestMeasurementTime?.encodeToJSON()
        nillableDictionary["latestMeasurementTime"] = self.latestMeasurementTime?.encodeToJSON()
        nillableDictionary["updated"] = self.updated?.encodeToJSON()
        nillableDictionary["causeOnly"] = self.causeOnly?.encodeToJSON()
        nillableDictionary["numberOfCorrelations"] = self.numberOfCorrelations?.encodeToJSON()
        nillableDictionary["outcome"] = self.outcome?.encodeToJSON()
        nillableDictionary["rawMeasurementsAtLastAnalysis"] = self.rawMeasurementsAtLastAnalysis?.encodeToJSON()
        nillableDictionary["numberOfRawMeasurements"] = self.numberOfRawMeasurements?.encodeToJSON()
        nillableDictionary["lastUnit"] = self.lastUnit
        nillableDictionary["lastValue"] = self.lastValue?.encodeToJSON()
        nillableDictionary["mostCommonValue"] = self.mostCommonValue?.encodeToJSON()
        nillableDictionary["mostCommonUnit"] = self.mostCommonUnit
        nillableDictionary["lastSource"] = self.lastSource?.encodeToJSON()
        nillableDictionary["imageUrl"] = self.imageUrl
        nillableDictionary["ionIcon"] = self.ionIcon
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}