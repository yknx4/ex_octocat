# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject152 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title,
    :body
  ]

  @type t :: %__MODULE__{
          :title => String.t() | nil,
          :body => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject152 do
  def decode(value, _options) do
    value
  end
end
