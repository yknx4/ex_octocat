# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimUserListEnterpriseEmails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :value,
    :primary,
    :type
  ]

  @type t :: %__MODULE__{
          :value => String.t() | nil,
          :primary => boolean() | nil,
          :type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimUserListEnterpriseEmails do
  def decode(value, _options) do
    value
  end
end
