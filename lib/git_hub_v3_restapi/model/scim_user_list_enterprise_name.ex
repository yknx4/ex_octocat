# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimUserListEnterpriseName do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :givenName,
    :familyName
  ]

  @type t :: %__MODULE__{
          :givenName => String.t() | nil,
          :familyName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimUserListEnterpriseName do
  def decode(value, _options) do
    value
  end
end
