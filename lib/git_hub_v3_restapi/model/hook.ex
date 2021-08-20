# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Hook do
  @moduledoc """
  Webhooks for repositories.
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :id,
    :name,
    :active,
    :events,
    :config,
    :updated_at,
    :created_at,
    :url,
    :test_url,
    :ping_url,
    :deliveries_url,
    :last_response
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :id => integer(),
          :name => String.t(),
          :active => boolean(),
          :events => [String.t()],
          :config => ExOctocat.Model.HookConfig.t(),
          :updated_at => DateTime.t(),
          :created_at => DateTime.t(),
          :url => String.t(),
          :test_url => String.t(),
          :ping_url => String.t(),
          :deliveries_url => String.t() | nil,
          :last_response => ExOctocat.Model.HookResponse.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Hook do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:config, :struct, ExOctocat.Model.HookConfig, options)
    |> deserialize(:last_response, :struct, ExOctocat.Model.HookResponse, options)
  end
end