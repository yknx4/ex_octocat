# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimEnterpriseUserEmails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :value,
    :type,
    :primary
  ]

  @type t :: %__MODULE__{
          :value => String.t() | nil,
          :type => String.t() | nil,
          :primary => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimEnterpriseUserEmails do
  def decode(value, _options) do
    value
  end
end