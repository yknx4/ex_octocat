# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.BranchRestrictionPolicy do
  @moduledoc """
  Branch Restriction Policy
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :users_url,
    :teams_url,
    :apps_url,
    :users,
    :teams,
    :apps
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :users_url => String.t(),
          :teams_url => String.t(),
          :apps_url => String.t(),
          :users => [ExOctocat.Model.RepositoryTemplateRepositoryOwner.t()],
          :teams => [ExOctocat.Model.BranchRestrictionPolicyTeams.t()],
          :apps => [ExOctocat.Model.BranchRestrictionPolicyApps.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.BranchRestrictionPolicy do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :users,
      :list,
      ExOctocat.Model.RepositoryTemplateRepositoryOwner,
      options
    )
    |> deserialize(:teams, :list, ExOctocat.Model.BranchRestrictionPolicyTeams, options)
    |> deserialize(:apps, :list, ExOctocat.Model.BranchRestrictionPolicyApps, options)
  end
end
