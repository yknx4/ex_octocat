# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject106 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :lock_reason
  ]

  @type t :: %__MODULE__{
          :lock_reason => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject106 do
  def decode(value, _options) do
    value
  end
end
