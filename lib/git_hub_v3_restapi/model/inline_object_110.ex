# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject110 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :new_name,
    :color,
    :description
  ]

  @type t :: %__MODULE__{
          :new_name => String.t() | nil,
          :color => String.t() | nil,
          :description => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject110 do
  def decode(value, _options) do
    value
  end
end
