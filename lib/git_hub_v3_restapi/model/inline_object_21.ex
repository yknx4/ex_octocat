# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject21 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :last_read_at,
    :read
  ]

  @type t :: %__MODULE__{
          :last_read_at => DateTime.t() | nil,
          :read => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject21 do
  def decode(value, _options) do
    value
  end
end
