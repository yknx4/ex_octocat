# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ContentTreeLinks do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :git,
    :html,
    :self
  ]

  @type t :: %__MODULE__{
          :git => String.t() | nil,
          :html => String.t() | nil,
          :self => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ContentTreeLinks do
  def decode(value, _options) do
    value
  end
end
