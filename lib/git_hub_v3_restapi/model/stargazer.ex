# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Stargazer do
  @moduledoc """
  Stargazer
  """

  @derive [Poison.Encoder]
  defstruct [
    :starred_at,
    :user
  ]

  @type t :: %__MODULE__{
          :starred_at => DateTime.t(),
          :user => SimpleUser | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Stargazer do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
  end
end