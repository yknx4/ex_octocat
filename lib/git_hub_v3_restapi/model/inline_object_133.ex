# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject133 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :content
  ]

  @type t :: %__MODULE__{
          :content => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject133 do
  def decode(value, _options) do
    value
  end
end
