# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject104 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :assignees
  ]

  @type t :: %__MODULE__{
          :assignees => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject104 do
  def decode(value, _options) do
    value
  end
end
