/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */
package io.swagger.client.api

import io.swagger.client.model.Unit
import io.swagger.client.model.UnitCategory
import io.swagger.client.core._
import io.swagger.client.core.CollectionFormats._
import io.swagger.client.core.ApiKeyLocations._

object UnitsApi {

  /**
   * Get a list of the categories of measurement units such as &#39;Distance&#39;, &#39;Duration&#39;, &#39;Energy&#39;, &#39;Frequency&#39;, &#39;Miscellany&#39;, &#39;Pressure&#39;, &#39;Proportion&#39;, &#39;Rating&#39;, &#39;Temperature&#39;, &#39;Volume&#39;, and &#39;Weight&#39;.
   * 
   * Expected answers:
   *   code 200 : UnitCategory (Successful operation)
   *   code 401 :  (Not Authenticated)
   * 
   * Available security schemes:
   *   access_token (apiKey)
   */
  def v1UnitCategoriesGet()(implicit apiKey: ApiKeyValue): ApiRequest[UnitCategory] =
    ApiRequest[UnitCategory](ApiMethods.GET, "https://app.quantimo.do/api", "/v1/unitCategories", "application/json")
      .withApiKey(apiKey, "access_token", QUERY)
      .withSuccessResponse[UnitCategory](200)
      .withErrorResponse[Unit](401)
        /**
   * Get all available units
   * 
   * Expected answers:
   *   code 200 : Seq[Unit] (Successful operation)
   *   code 401 :  (Not Authenticated)
   * 
   * Available security schemes:
   *   access_token (apiKey)
   * 
   * @param accessToken User&#39;s OAuth2 access token
   * @param userId User&#39;s id
   * @param id Unit id
   * @param unitName Unit name
   * @param unitAbbreviatedName Restrict the results to a specific unit by providing the unit abbreviation.
   * @param unitCategoryName Restrict the results to a specific unit category by providing the unit category name.
   */
  def v1UnitsGet(accessToken: Option[String] = None, userId: Option[Int] = None, id: Option[Int] = None, unitName: Option[String] = None, unitAbbreviatedName: Option[String] = None, unitCategoryName: Option[String] = None)(implicit apiKey: ApiKeyValue): ApiRequest[Seq[Unit]] =
    ApiRequest[Seq[Unit]](ApiMethods.GET, "https://app.quantimo.do/api", "/v1/units", "application/json")
      .withApiKey(apiKey, "access_token", QUERY)
      .withQueryParam("access_token", accessToken)
      .withQueryParam("userId", userId)
      .withQueryParam("id", id)
      .withQueryParam("unitName", unitName)
      .withQueryParam("unitAbbreviatedName", unitAbbreviatedName)
      .withQueryParam("unitCategoryName", unitCategoryName)
      .withSuccessResponse[Seq[Unit]](200)
      .withErrorResponse[Unit](401)
        /**
   * Get a list of all possible units to use for a given variable
   * 
   * Expected answers:
   *   code 200 : Seq[Unit] (Successful operation)
   *   code 401 :  (Not Authenticated)
   * 
   * Available security schemes:
   *   access_token (apiKey)
   * 
   * @param accessToken User&#39;s OAuth2 access token
   * @param userId User&#39;s id
   * @param unitName Name of Unit you want to retrieve
   * @param unitAbbreviatedName Abbreviated Unit Name of the unit you want
   * @param unitCategoryName Name of the category you want units for
   * @param variable Name of the variable you want units for
   */
  def v1UnitsVariableGet(accessToken: Option[String] = None, userId: Option[Int] = None, unitName: Option[String] = None, unitAbbreviatedName: Option[String] = None, unitCategoryName: Option[String] = None, variable: Option[String] = None)(implicit apiKey: ApiKeyValue): ApiRequest[Seq[Unit]] =
    ApiRequest[Seq[Unit]](ApiMethods.GET, "https://app.quantimo.do/api", "/v1/unitsVariable", "application/json")
      .withApiKey(apiKey, "access_token", QUERY)
      .withQueryParam("access_token", accessToken)
      .withQueryParam("userId", userId)
      .withQueryParam("unitName", unitName)
      .withQueryParam("unitAbbreviatedName", unitAbbreviatedName)
      .withQueryParam("unitCategoryName", unitCategoryName)
      .withQueryParam("variable", variable)
      .withSuccessResponse[Seq[Unit]](200)
      .withErrorResponse[Unit](401)
      

}
