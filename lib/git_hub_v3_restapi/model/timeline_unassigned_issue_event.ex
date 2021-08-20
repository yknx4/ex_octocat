# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TimelineUnassignedIssueEvent do
  @moduledoc """
  Timeline Unassigned Issue Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :node_id,
    :url,
    :actor,
    :event,
    :commit_id,
    :commit_url,
    :created_at,
    :performed_via_github_app,
    :assignee
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :node_id => String.t(),
          :url => String.t(),
          :actor => ExOctocat.Model.SimpleUser.t() | nil,
          :event => String.t(),
          :commit_id => String.t() | nil,
          :commit_url => String.t() | nil,
          :created_at => String.t(),
          :performed_via_github_app => ExOctocat.Model.Integration.t() | nil,
          :assignee => ExOctocat.Model.SimpleUser.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TimelineUnassignedIssueEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:actor, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:performed_via_github_app, :struct, ExOctocat.Model.Integration, options)
    |> deserialize(:assignee, :struct, ExOctocat.Model.SimpleUser, options)
  end
end
