# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.DeploymentStatus do
  @moduledoc """
  The status of a deployment.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :id,
    :node_id,
    :state,
    :creator,
    :description,
    :environment,
    :target_url,
    :created_at,
    :updated_at,
    :deployment_url,
    :repository_url,
    :environment_url,
    :log_url,
    :performed_via_github_app
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :state => String.t(),
          :creator => SimpleUser | nil,
          :description => String.t(),
          :environment => String.t() | nil,
          :target_url => String.t(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :deployment_url => String.t(),
          :repository_url => String.t(),
          :environment_url => String.t() | nil,
          :log_url => String.t() | nil,
          :performed_via_github_app => Integration | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.DeploymentStatus do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:creator, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:performed_via_github_app, :struct, ExOctocat.Model.Integration, options)
  end
end