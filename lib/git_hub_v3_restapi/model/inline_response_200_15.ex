# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse20015 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :jobs
  ]

  @type t :: %__MODULE__{
          :total_count => integer(),
          :jobs => [ExOctocat.Model.Job.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse20015 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:jobs, :list, ExOctocat.Model.Job, options)
  end
end
