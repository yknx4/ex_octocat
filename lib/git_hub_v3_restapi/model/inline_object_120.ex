# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject120 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title,
    :body,
    :state,
    :base,
    :maintainer_can_modify
  ]

  @type t :: %__MODULE__{
          :title => String.t() | nil,
          :body => String.t() | nil,
          :state => String.t() | nil,
          :base => String.t() | nil,
          :maintainer_can_modify => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject120 do
  def decode(value, _options) do
    value
  end
end
