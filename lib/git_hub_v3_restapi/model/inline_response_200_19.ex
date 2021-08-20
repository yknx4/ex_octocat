# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse20019 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :check_suites
  ]

  @type t :: %__MODULE__{
          :total_count => integer(),
          :check_suites => [ExOctocat.Model.CheckSuite.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse20019 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:check_suites, :list, ExOctocat.Model.CheckSuite, options)
  end
end