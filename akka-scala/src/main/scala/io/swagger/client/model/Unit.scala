/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Unit (
  /* Unit name */
  name: String,
  /* Unit abbreviation */
  abbreviatedName: String,
  /* Unit category */
  category: UnitEnums.Category,
  /* The minimum allowed value for measurements. While you can record a value below this minimum, it will be excluded from the correlation analysis. */
  minimumAllowedValue: Option[Double],
  /* The maximum allowed value for measurements. While you can record a value above this maximum, it will be excluded from the correlation analysis. */
  maximumAllowedValue: Option[Double],
  /* Conversion steps list */
  conversionSteps: Seq[ConversionStep]
) extends ApiModel

object UnitEnums {

  type Category = Category.Value
  object Category extends Enumeration {
    val Distance = Value("Distance")
    val Duration = Value("Duration")
    val Energy = Value("Energy")
    val Frequency = Value("Frequency")
    val Miscellany = Value("Miscellany")
    val Pressure = Value("Pressure")
    val Proportion = Value("Proportion")
    val Rating = Value("Rating")
    val Temperature = Value("Temperature")
    val Volume = Value("Volume")
    val Weight = Value("Weight")
  }

}
