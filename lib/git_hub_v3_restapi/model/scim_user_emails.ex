# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimUserEmails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :value,
    :primary
  ]

  @type t :: %__MODULE__{
          :value => String.t(),
          :primary => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimUserEmails do
  def decode(value, _options) do
    value
  end
end