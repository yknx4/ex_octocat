# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject84 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :organization
  ]

  @type t :: %__MODULE__{
          :organization => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject84 do
  def decode(value, _options) do
    value
  end
end