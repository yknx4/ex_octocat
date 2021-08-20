# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject143 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :schemas,
    :Operations
  ]

  @type t :: %__MODULE__{
          :schemas => [String.t()],
          :Operations => [
            ExOctocat.Model.ScimV2EnterprisesEnterpriseGroupsScimGroupIdOperations.t()
          ]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject143 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :Operations,
      :list,
      ExOctocat.Model.ScimV2EnterprisesEnterpriseGroupsScimGroupIdOperations,
      options
    )
  end
end
