# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject62 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :encrypted_value,
    :key_id
  ]

  @type t :: %__MODULE__{
          :encrypted_value => String.t() | nil,
          :key_id => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject62 do
  def decode(value, _options) do
    value
  end
end
