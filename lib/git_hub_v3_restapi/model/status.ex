# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Status do
  @moduledoc """
  The status of a commit.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :avatar_url,
    :id,
    :node_id,
    :state,
    :description,
    :target_url,
    :context,
    :created_at,
    :updated_at,
    :creator
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :avatar_url => String.t() | nil,
          :id => integer(),
          :node_id => String.t(),
          :state => String.t(),
          :description => String.t(),
          :target_url => String.t(),
          :context => String.t(),
          :created_at => String.t(),
          :updated_at => String.t(),
          :creator => ExOctocat.Model.SimpleUser.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Status do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:creator, :struct, ExOctocat.Model.SimpleUser, options)
  end
end
