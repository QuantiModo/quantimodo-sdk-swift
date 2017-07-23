/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Measurement (
  /* Name of the variable for which we are creating the measurement records */
  variableName: String,
  /* Application or device used to record the measurement values */
  sourceName: String,
  /* Start Time for the measurement event in UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\" */
  startTimeString: String,
  /* Seconds between the start of the event measured and 1970 (Unix timestamp) */
  startTimeEpoch: Option[Int],
  humanTime: Option[HumanTime],
  /* Converted measurement value in requested unit */
  value: Double,
  /* Original value as originally submitted */
  originalValue: Option[Int],
  /* Original Unit of measurement as originally submitted */
  originalunitAbbreviatedName: Option[String],
  /* Abbreviated name for the unit of measurement */
  unitAbbreviatedName: String,
  /* Note of measurement */
  note: Option[String]
) extends ApiModel

