# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject87 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ref,
    :sha,
    :key
  ]

  @type t :: %__MODULE__{
          :ref => String.t(),
          :sha => String.t(),
          :key => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject87 do
  def decode(value, _options) do
    value
  end
end
