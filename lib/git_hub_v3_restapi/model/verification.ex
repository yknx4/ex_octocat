# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Verification do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :verified,
    :reason,
    :payload,
    :signature
  ]

  @type t :: %__MODULE__{
          :verified => boolean(),
          :reason => String.t(),
          :payload => String.t() | nil,
          :signature => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Verification do
  def decode(value, _options) do
    value
  end
end
