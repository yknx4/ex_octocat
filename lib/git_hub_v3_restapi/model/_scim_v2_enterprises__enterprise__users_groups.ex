# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersGroups do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :value
  ]

  @type t :: %__MODULE__{
          :value => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersGroups do
  def decode(value, _options) do
    value
  end
end
