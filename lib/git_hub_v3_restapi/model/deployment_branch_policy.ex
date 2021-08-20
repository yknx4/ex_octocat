# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.DeploymentBranchPolicy do
  @moduledoc """
  The type of deployment branch policy for this environment. To allow all branches to deploy, set to `null`.
  """

  @derive [Poison.Encoder]
  defstruct [
    :protected_branches,
    :custom_branch_policies
  ]

  @type t :: %__MODULE__{
          :protected_branches => boolean(),
          :custom_branch_policies => boolean()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.DeploymentBranchPolicy do
  def decode(value, _options) do
    value
  end
end