# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject12 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :selected_organization_ids
  ]

  @type t :: %__MODULE__{
          :selected_organization_ids => [integer()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject12 do
  def decode(value, _options) do
    value
  end
end
