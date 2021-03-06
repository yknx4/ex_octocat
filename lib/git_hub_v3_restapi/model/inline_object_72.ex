# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject72 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :commit_sha,
    :ref,
    :sarif,
    :checkout_uri,
    :started_at,
    :tool_name
  ]

  @type t :: %__MODULE__{
          :commit_sha => String.t(),
          :ref => String.t(),
          :sarif => String.t(),
          :checkout_uri => String.t() | nil,
          :started_at => DateTime.t() | nil,
          :tool_name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject72 do
  def decode(value, _options) do
    value
  end
end
