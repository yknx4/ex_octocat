# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject48 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :role
  ]

  @type t :: %__MODULE__{
          :role => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject48 do
  def decode(value, _options) do
    value
  end
end
