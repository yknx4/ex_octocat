# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject96 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :email,
    :name
  ]

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject96 do
  def decode(value, _options) do
    value
  end
end
