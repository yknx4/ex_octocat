# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject129 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :expected_head_sha
  ]

  @type t :: %__MODULE__{
          :expected_head_sha => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject129 do
  def decode(value, _options) do
    value
  end
end
