# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GpgKeyEmails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :email,
    :verified
  ]

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :verified => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GpgKeyEmails do
  def decode(value, _options) do
    value
  end
end