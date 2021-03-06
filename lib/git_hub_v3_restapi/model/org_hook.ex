# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.OrgHook do
  @moduledoc """
  Org Hook
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :url,
    :ping_url,
    :deliveries_url,
    :name,
    :events,
    :active,
    :config,
    :updated_at,
    :created_at,
    :type
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :url => String.t(),
          :ping_url => String.t(),
          :deliveries_url => String.t() | nil,
          :name => String.t(),
          :events => [String.t()],
          :active => boolean(),
          :config => ExOctocat.Model.OrgHookConfig.t(),
          :updated_at => DateTime.t(),
          :created_at => DateTime.t(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.OrgHook do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:config, :struct, ExOctocat.Model.OrgHookConfig, options)
  end
end
