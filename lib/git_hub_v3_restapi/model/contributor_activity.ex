# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ContributorActivity do
  @moduledoc """
  Contributor Activity
  """

  @derive [Poison.Encoder]
  defstruct [
    :author,
    :total,
    :weeks
  ]

  @type t :: %__MODULE__{
          :author => SimpleUser | nil,
          :total => integer(),
          :weeks => [ExOctocat.Model.ContributorActivityWeeks.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ContributorActivity do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:author, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:weeks, :list, ExOctocat.Model.ContributorActivityWeeks, options)
  end
end
