# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject135 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :state,
    :target_url,
    :description,
    :context
  ]

  @type t :: %__MODULE__{
          :state => String.t(),
          :target_url => String.t() | nil,
          :description => String.t() | nil,
          :context => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject135 do
  def decode(value, _options) do
    value
  end
end
