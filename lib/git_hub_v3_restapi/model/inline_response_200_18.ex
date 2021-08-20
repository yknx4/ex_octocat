# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse20018 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :check_runs
  ]

  @type t :: %__MODULE__{
          :total_count => integer(),
          :check_runs => [ExOctocat.Model.CheckRun.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse20018 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:check_runs, :list, ExOctocat.Model.CheckRun, options)
  end
end