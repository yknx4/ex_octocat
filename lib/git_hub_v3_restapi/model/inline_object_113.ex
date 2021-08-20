# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject113 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title,
    :state,
    :description,
    :due_on
  ]

  @type t :: %__MODULE__{
          :title => String.t() | nil,
          :state => String.t() | nil,
          :description => String.t() | nil,
          :due_on => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject113 do
  def decode(value, _options) do
    value
  end
end