# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse503 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :message,
    :documentation_url
  ]

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :message => String.t() | nil,
          :documentation_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse503 do
  def decode(value, _options) do
    value
  end
end
