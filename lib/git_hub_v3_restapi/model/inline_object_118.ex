# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject118 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :body
  ]

  @type t :: %__MODULE__{
          :body => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject118 do
  def decode(value, _options) do
    value
  end
end
