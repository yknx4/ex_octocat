# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject85 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :content,
    :encoding
  ]

  @type t :: %__MODULE__{
          :content => String.t(),
          :encoding => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject85 do
  def decode(value, _options) do
    value
  end
end