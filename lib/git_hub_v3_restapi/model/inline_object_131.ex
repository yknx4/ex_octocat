# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject131 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :label,
    :state
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :label => String.t() | nil,
          :state => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject131 do
  def decode(value, _options) do
    value
  end
end
