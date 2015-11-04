//
// UserVariableAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SwaggerClientAPI {
    
    public class UserVariableAPI: APIBase {
    
        /**
         
         Get all UserVariables
         
         - GET /userVariables
         - Get all UserVariables
         - examples: [{example={
  "data" : [ {
    "earliest_source_time" : 123,
    "number_of_unique_daily_values" : 1.3579000000000001069366817318950779736042022705078125,
    "location" : "aeiou",
    "number_of_correlations" : 123,
    "minimum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "sources" : "aeiou",
    "last_original_value" : 123,
    "maximum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "updated" : 123,
    "error_message" : "aeiou",
    "earliest_measurement_time" : 123,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125,
    "client_id" : "aeiou",
    "latest_measurement_time" : 123,
    "onset_delay" : 123,
    "parent_id" : 123,
    "number_of_measurements" : 123,
    "status" : "aeiou",
    "latest_source_time" : 123,
    "last_successful_update_time" : "2015-11-03T22:25:27.433+0000",
    "median" : 1.3579000000000001069366817318950779736042022705078125,
    "updated_at" : "2015-11-03T22:25:27.434+0000",
    "last_source_id" : 123,
    "number_of_processed_measurements" : 123,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "last_unit_id" : 123,
    "default_unit_id" : 123,
    "minimum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125,
    "standard_deviation" : 1.3579000000000001069366817318950779736042022705078125,
    "variable_category_id" : 123,
    "filling_type" : "aeiou",
    "most_common_value" : 1.3579000000000001069366817318950779736042022705078125,
    "join_with" : 123,
    "mean" : 1.3579000000000001069366817318950779736042022705078125,
    "created_at" : "2015-11-03T22:25:27.434+0000",
    "cause_only" : true,
    "variable_id" : 123,
    "earliest_filling_time" : 123,
    "number_of_changes" : 123,
    "most_common_unit_id" : 123,
    "kurtosis" : 1.3579000000000001069366817318950779736042022705078125,
    "last_value" : 1.3579000000000001069366817318950779736042022705078125,
    "latest_filling_time" : 123,
    "variance" : 1.3579000000000001069366817318950779736042022705078125,
    "measurements_at_last_analysis" : 123,
    "outcome" : true,
    "last_original_unit_id" : 123,
    "filling_value" : 1.3579000000000001069366817318950779736042022705078125,
    "skewness" : 1.3579000000000001069366817318950779736042022705078125,
    "public" : 123,
    "duration_of_action" : 123,
    "maximum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125
  } ],
  "success" : true
}, contentType=application/json}]
         
         - parameter clientId: (query) client_id
         - parameter variableId: (query) variable_id
         - parameter defaultUnitId: (query) default_unit_id
         - parameter minimumAllowedValue: (query) minimum_allowed_value
         - parameter maximumAllowedValue: (query) maximum_allowed_value
         - parameter fillingValue: (query) filling_value
         - parameter joinWith: (query) join_with
         - parameter onsetDelay: (query) onset_delay
         - parameter durationOfAction: (query) duration_of_action
         - parameter variableCategoryId: (query) variable_category_id
         - parameter updated: (query) updated
         - parameter Swaggerpublic: (query) public
         - parameter causeOnly: (query) cause_only
         - parameter fillingType: (query) filling_type
         - parameter numberOfMeasurements: (query) number_of_measurements
         - parameter numberOfProcessedMeasurements: (query) number_of_processed_measurements
         - parameter measurementsAtLastAnalysis: (query) measurements_at_last_analysis
         - parameter lastUnitId: (query) last_unit_id
         - parameter lastOriginalUnitId: (query) last_original_unit_id
         - parameter lastOriginalValue: (query) last_original_value
         - parameter lastValue: (query) last_value
         - parameter lastSourceId: (query) last_source_id
         - parameter numberOfCorrelations: (query) number_of_correlations
         - parameter status: (query) status
         - parameter errorMessage: (query) error_message
         - parameter lastSuccessfulUpdateTime: (query) last_successful_update_time
         - parameter standardDeviation: (query) standard_deviation
         - parameter variance: (query) variance
         - parameter minimumRecordedDailyValue: (query) minimum_recorded_daily_value
         - parameter maximumRecordedDailyValue: (query) maximum_recorded_daily_value
         - parameter mean: (query) mean
         - parameter median: (query) median
         - parameter mostCommonUnitId: (query) most_common_unit_id
         - parameter mostCommonValue: (query) most_common_value
         - parameter numberOfUniqueDailyValues: (query) number_of_unique_daily_values
         - parameter numberOfChanges: (query) number_of_changes
         - parameter skewness: (query) skewness
         - parameter kurtosis: (query) kurtosis
         - parameter latitude: (query) latitude
         - parameter longitude: (query) longitude
         - parameter location: (query) location
         - parameter createdAt: (query) created_at
         - parameter updatedAt: (query) updated_at
         - parameter outcome: (query) outcome
         - parameter sources: (query) sources
         - parameter earliestSourceTime: (query) earliest_source_time
         - parameter latestSourceTime: (query) latest_source_time
         - parameter earliestMeasurementTime: (query) earliest_measurement_time
         - parameter latestMeasurementTime: (query) latest_measurement_time
         - parameter earliestFillingTime: (query) earliest_filling_time
         - parameter latestFillingTime: (query) latest_filling_time
         - parameter limit: (query) limit
         - parameter offset: (query) offset
         - parameter sort: (query) sort

         - returns: RequestBuilder<Inline_response_200_21> 
         */
        public class func userVariablesGet(clientId clientId: String?, variableId: Int?, defaultUnitId: Int?, minimumAllowedValue: Double?, maximumAllowedValue: Double?, fillingValue: Double?, joinWith: Int?, onsetDelay: Int?, durationOfAction: Int?, variableCategoryId: Int?, updated: Int?, Swaggerpublic: Int?, causeOnly: Bool?, fillingType: String?, numberOfMeasurements: Int?, numberOfProcessedMeasurements: Int?, measurementsAtLastAnalysis: Int?, lastUnitId: Int?, lastOriginalUnitId: Int?, lastOriginalValue: Int?, lastValue: Double?, lastSourceId: Int?, numberOfCorrelations: Int?, status: String?, errorMessage: String?, lastSuccessfulUpdateTime: String?, standardDeviation: Double?, variance: Double?, minimumRecordedDailyValue: Double?, maximumRecordedDailyValue: Double?, mean: Double?, median: Double?, mostCommonUnitId: Int?, mostCommonValue: Double?, numberOfUniqueDailyValues: Double?, numberOfChanges: Int?, skewness: Double?, kurtosis: Double?, latitude: Double?, longitude: Double?, location: String?, createdAt: String?, updatedAt: String?, outcome: Bool?, sources: String?, earliestSourceTime: Int?, latestSourceTime: Int?, earliestMeasurementTime: Int?, latestMeasurementTime: Int?, earliestFillingTime: Int?, latestFillingTime: Int?, limit: Int?, offset: Int?, sort: String?) -> RequestBuilder<Inline_response_200_21> {
            let path = "/userVariables"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "clientId": clientId,
                "variableId": variableId,
                "defaultUnitId": defaultUnitId,
                "minimumAllowedValue": minimumAllowedValue,
                "maximumAllowedValue": maximumAllowedValue,
                "fillingValue": fillingValue,
                "joinWith": joinWith,
                "onsetDelay": onsetDelay,
                "durationOfAction": durationOfAction,
                "variableCategoryId": variableCategoryId,
                "updated": updated,
                "Swaggerpublic": Swaggerpublic,
                "causeOnly": causeOnly,
                "fillingType": fillingType,
                "numberOfMeasurements": numberOfMeasurements,
                "numberOfProcessedMeasurements": numberOfProcessedMeasurements,
                "measurementsAtLastAnalysis": measurementsAtLastAnalysis,
                "lastUnitId": lastUnitId,
                "lastOriginalUnitId": lastOriginalUnitId,
                "lastOriginalValue": lastOriginalValue,
                "lastValue": lastValue,
                "lastSourceId": lastSourceId,
                "numberOfCorrelations": numberOfCorrelations,
                "status": status,
                "errorMessage": errorMessage,
                "lastSuccessfulUpdateTime": lastSuccessfulUpdateTime,
                "standardDeviation": standardDeviation,
                "variance": variance,
                "minimumRecordedDailyValue": minimumRecordedDailyValue,
                "maximumRecordedDailyValue": maximumRecordedDailyValue,
                "mean": mean,
                "median": median,
                "mostCommonUnitId": mostCommonUnitId,
                "mostCommonValue": mostCommonValue,
                "numberOfUniqueDailyValues": numberOfUniqueDailyValues,
                "numberOfChanges": numberOfChanges,
                "skewness": skewness,
                "kurtosis": kurtosis,
                "latitude": latitude,
                "longitude": longitude,
                "location": location,
                "createdAt": createdAt,
                "updatedAt": updatedAt,
                "outcome": outcome,
                "sources": sources,
                "earliestSourceTime": earliestSourceTime,
                "latestSourceTime": latestSourceTime,
                "earliestMeasurementTime": earliestMeasurementTime,
                "latestMeasurementTime": latestMeasurementTime,
                "earliestFillingTime": earliestFillingTime,
                "latestFillingTime": latestFillingTime,
                "limit": limit,
                "offset": offset,
                "sort": sort
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_21>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Store UserVariable
         
         - POST /userVariables
         - Store UserVariable
         - examples: [{example={
  "data" : {
    "earliest_source_time" : 123,
    "number_of_unique_daily_values" : 1.3579000000000001069366817318950779736042022705078125,
    "location" : "aeiou",
    "number_of_correlations" : 123,
    "minimum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "sources" : "aeiou",
    "last_original_value" : 123,
    "maximum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "updated" : 123,
    "error_message" : "aeiou",
    "earliest_measurement_time" : 123,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125,
    "client_id" : "aeiou",
    "latest_measurement_time" : 123,
    "onset_delay" : 123,
    "parent_id" : 123,
    "number_of_measurements" : 123,
    "status" : "aeiou",
    "latest_source_time" : 123,
    "last_successful_update_time" : "2015-11-03T22:25:27.450+0000",
    "median" : 1.3579000000000001069366817318950779736042022705078125,
    "updated_at" : "2015-11-03T22:25:27.450+0000",
    "last_source_id" : 123,
    "number_of_processed_measurements" : 123,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "last_unit_id" : 123,
    "default_unit_id" : 123,
    "minimum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125,
    "standard_deviation" : 1.3579000000000001069366817318950779736042022705078125,
    "variable_category_id" : 123,
    "filling_type" : "aeiou",
    "most_common_value" : 1.3579000000000001069366817318950779736042022705078125,
    "join_with" : 123,
    "mean" : 1.3579000000000001069366817318950779736042022705078125,
    "created_at" : "2015-11-03T22:25:27.450+0000",
    "cause_only" : true,
    "variable_id" : 123,
    "earliest_filling_time" : 123,
    "number_of_changes" : 123,
    "most_common_unit_id" : 123,
    "kurtosis" : 1.3579000000000001069366817318950779736042022705078125,
    "last_value" : 1.3579000000000001069366817318950779736042022705078125,
    "latest_filling_time" : 123,
    "variance" : 1.3579000000000001069366817318950779736042022705078125,
    "measurements_at_last_analysis" : 123,
    "outcome" : true,
    "last_original_unit_id" : 123,
    "filling_value" : 1.3579000000000001069366817318950779736042022705078125,
    "skewness" : 1.3579000000000001069366817318950779736042022705078125,
    "public" : 123,
    "duration_of_action" : 123,
    "maximum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter body: (body) UserVariable that should be stored

         - returns: RequestBuilder<Inline_response_200_22> 
         */
        public class func userVariablesPost(body body: UserVariable?) -> RequestBuilder<Inline_response_200_22> {
            let path = "/userVariables"
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_22>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get UserVariable
         
         - GET /userVariables/{id}
         - Get UserVariable
         - examples: [{example={
  "data" : {
    "earliest_source_time" : 123,
    "number_of_unique_daily_values" : 1.3579000000000001069366817318950779736042022705078125,
    "location" : "aeiou",
    "number_of_correlations" : 123,
    "minimum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "sources" : "aeiou",
    "last_original_value" : 123,
    "maximum_allowed_value" : 1.3579000000000001069366817318950779736042022705078125,
    "updated" : 123,
    "error_message" : "aeiou",
    "earliest_measurement_time" : 123,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125,
    "client_id" : "aeiou",
    "latest_measurement_time" : 123,
    "onset_delay" : 123,
    "parent_id" : 123,
    "number_of_measurements" : 123,
    "status" : "aeiou",
    "latest_source_time" : 123,
    "last_successful_update_time" : "2015-11-03T22:25:27.453+0000",
    "median" : 1.3579000000000001069366817318950779736042022705078125,
    "updated_at" : "2015-11-03T22:25:27.453+0000",
    "last_source_id" : 123,
    "number_of_processed_measurements" : 123,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "last_unit_id" : 123,
    "default_unit_id" : 123,
    "minimum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125,
    "standard_deviation" : 1.3579000000000001069366817318950779736042022705078125,
    "variable_category_id" : 123,
    "filling_type" : "aeiou",
    "most_common_value" : 1.3579000000000001069366817318950779736042022705078125,
    "join_with" : 123,
    "mean" : 1.3579000000000001069366817318950779736042022705078125,
    "created_at" : "2015-11-03T22:25:27.453+0000",
    "cause_only" : true,
    "variable_id" : 123,
    "earliest_filling_time" : 123,
    "number_of_changes" : 123,
    "most_common_unit_id" : 123,
    "kurtosis" : 1.3579000000000001069366817318950779736042022705078125,
    "last_value" : 1.3579000000000001069366817318950779736042022705078125,
    "latest_filling_time" : 123,
    "variance" : 1.3579000000000001069366817318950779736042022705078125,
    "measurements_at_last_analysis" : 123,
    "outcome" : true,
    "last_original_unit_id" : 123,
    "filling_value" : 1.3579000000000001069366817318950779736042022705078125,
    "skewness" : 1.3579000000000001069366817318950779736042022705078125,
    "public" : 123,
    "duration_of_action" : 123,
    "maximum_recorded_daily_value" : 1.3579000000000001069366817318950779736042022705078125
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of UserVariable

         - returns: RequestBuilder<Inline_response_200_22> 
         */
        public class func userVariablesIdGet(id id: Int) -> RequestBuilder<Inline_response_200_22> {
            var path = "/userVariables/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_22>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Update UserVariable
         
         - PUT /userVariables/{id}
         - Update UserVariable
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of UserVariable
         - parameter body: (body) UserVariable that should be updated

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func userVariablesIdPut(id id: Int, body: UserVariable?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/userVariables/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Delete UserVariable
         
         - DELETE /userVariables/{id}
         - Delete UserVariable
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of UserVariable

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func userVariablesIdDelete(id id: Int) -> RequestBuilder<Inline_response_200_2> {
            var path = "/userVariables/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
        }
    
    }
}