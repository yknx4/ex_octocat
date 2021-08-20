# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimV2OrganizationsOrgUsersName do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :givenName,
    :familyName,
    :formatted
  ]

  @type t :: %__MODULE__{
          :givenName => String.t(),
          :familyName => String.t(),
          :formatted => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimV2OrganizationsOrgUsersName do
  def decode(value, _options) do
    value
  end
end
