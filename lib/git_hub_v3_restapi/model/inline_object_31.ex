# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject31 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :selected_repository_ids
  ]

  @type t :: %__MODULE__{
          :selected_repository_ids => [integer()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject31 do
  def decode(value, _options) do
    value
  end
end