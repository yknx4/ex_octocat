# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse2008 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :repositories
  ]

  @type t :: %__MODULE__{
          :total_count => float(),
          :repositories => [ExOctocat.Model.MinimalRepository.t()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse2008 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repositories, :list, ExOctocat.Model.MinimalRepository, options)
  end
end
