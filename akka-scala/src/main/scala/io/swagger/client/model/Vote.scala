/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Vote (
  /* id */
  id: Option[Int],
  /* clientId */
  clientId: String,
  /* ID of User */
  userId: Int,
  /* ID of the predictor variable */
  causeId: Int,
  /* ID of effect variable */
  effectId: Int,
  /* Value of Vote */
  value: Int,
  /* When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format */
  createdAt: Option[DateTime],
  /* When the record in the database was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format */
  updatedAt: Option[DateTime]
) extends ApiModel

