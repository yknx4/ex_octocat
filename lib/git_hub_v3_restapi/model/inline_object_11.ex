# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject11 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :enabled_organizations,
    :allowed_actions
  ]

  @type t :: %__MODULE__{
          :enabled_organizations => ExOctocat.Model.EnabledOrganizations.t(),
          :allowed_actions => ExOctocat.Model.AllowedActions.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject11 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :enabled_organizations,
      :struct,
      ExOctocat.Model.EnabledOrganizations,
      options
    )
    |> deserialize(:allowed_actions, :struct, ExOctocat.Model.AllowedActions, options)
  end
end