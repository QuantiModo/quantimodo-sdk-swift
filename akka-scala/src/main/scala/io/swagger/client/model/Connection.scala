/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Connection (
  /* id */
  id: Option[Int],
  /* ID of user that owns this correlation */
  userId: Option[Int],
  /* The id for the connector data source for which the connection is connected */
  connectorId: Int,
  /* Indicates whether a connector is currently connected to a service for a user. */
  connectStatus: Option[String],
  /* Error message if there is a problem with authorizing this connection. */
  connectError: Option[String],
  /* Time at which an update was requested by a user. */
  updateRequestedAt: Option[DateTime],
  /* Indicates whether a connector is currently updated. */
  updateStatus: Option[String],
  /* Indicates if there was an error during the update. */
  updateError: Option[String],
  /* The time at which the connector was last successfully updated. */
  lastSuccessfulUpdatedAt: Option[DateTime],
  /* When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format */
  createdAt: Option[DateTime],
  /* When the record in the database was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format */
  updatedAt: Option[DateTime]
) extends ApiModel

