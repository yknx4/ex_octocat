# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.AuditLogEvent do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"@timestamp",
    :action,
    :active,
    :active_was,
    :actor,
    :actor_id,
    :actor_location,
    :data,
    :org_id,
    :blocked_user,
    :business,
    :config,
    :config_was,
    :content_type,
    :created_at,
    :deploy_key_fingerprint,
    :_document_id,
    :emoji,
    :events,
    :events_were,
    :explanation,
    :fingerprint,
    :hook_id,
    :limited_availability,
    :message,
    :name,
    :old_user,
    :openssh_public_key,
    :org,
    :previous_visibility,
    :read_only,
    :repo,
    :repository,
    :repository_public,
    :target_login,
    :team,
    :transport_protocol,
    :transport_protocol_name,
    :user,
    :visibility
  ]

  @type t :: %__MODULE__{
          :"@timestamp" => integer() | nil,
          :action => String.t() | nil,
          :active => boolean() | nil,
          :active_was => boolean() | nil,
          :actor => String.t() | nil,
          :actor_id => integer() | nil,
          :actor_location => ExOctocat.Model.AuditLogEventActorLocation.t() | nil,
          :data => %{optional(String.t()) => map()} | nil,
          :org_id => integer() | nil,
          :blocked_user => String.t() | nil,
          :business => String.t() | nil,
          :config => List | nil,
          :config_was => List | nil,
          :content_type => String.t() | nil,
          :created_at => integer() | nil,
          :deploy_key_fingerprint => String.t() | nil,
          :_document_id => String.t() | nil,
          :emoji => String.t() | nil,
          :events => List | nil,
          :events_were => List | nil,
          :explanation => String.t() | nil,
          :fingerprint => String.t() | nil,
          :hook_id => integer() | nil,
          :limited_availability => boolean() | nil,
          :message => String.t() | nil,
          :name => String.t() | nil,
          :old_user => String.t() | nil,
          :openssh_public_key => String.t() | nil,
          :org => String.t() | nil,
          :previous_visibility => String.t() | nil,
          :read_only => boolean() | nil,
          :repo => String.t() | nil,
          :repository => String.t() | nil,
          :repository_public => boolean() | nil,
          :target_login => String.t() | nil,
          :team => String.t() | nil,
          :transport_protocol => integer() | nil,
          :transport_protocol_name => String.t() | nil,
          :user => String.t() | nil,
          :visibility => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.AuditLogEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :actor_location,
      :struct,
      ExOctocat.Model.AuditLogEventActorLocation,
      options
    )
  end
end
