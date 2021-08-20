# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse20016 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :secrets
  ]

  @type t :: %__MODULE__{
          :total_count => integer(),
          :secrets => [ExOctocat.Model.ActionsSecret.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse20016 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:secrets, :list, ExOctocat.Model.ActionsSecret, options)
  end
end
