# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersName do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :givenName,
    :familyName
  ]

  @type t :: %__MODULE__{
          :givenName => String.t(),
          :familyName => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersName do
  def decode(value, _options) do
    value
  end
end
