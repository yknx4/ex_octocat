# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TeamMembership do
  @moduledoc """
  Team Membership
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :role,
    :state
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :role => String.t(),
          :state => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TeamMembership do
  def decode(value, _options) do
    value
  end
end
