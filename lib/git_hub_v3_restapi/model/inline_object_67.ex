# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject67 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :strict,
    :contexts
  ]

  @type t :: %__MODULE__{
          :strict => boolean() | nil,
          :contexts => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject67 do
  def decode(value, _options) do
    value
  end
end
