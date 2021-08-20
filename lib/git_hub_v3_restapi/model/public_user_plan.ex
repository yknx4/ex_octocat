# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PublicUserPlan do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :collaborators,
    :name,
    :space,
    :private_repos
  ]

  @type t :: %__MODULE__{
          :collaborators => integer(),
          :name => String.t(),
          :space => integer(),
          :private_repos => integer()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PublicUserPlan do
  def decode(value, _options) do
    value
  end
end
