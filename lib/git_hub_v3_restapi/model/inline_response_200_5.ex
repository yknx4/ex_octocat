# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse2005 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_count,
    :repositories,
    :repository_selection
  ]

  @type t :: %__MODULE__{
          :total_count => integer(),
          :repositories => [ExOctocat.Model.Repository.t()],
          :repository_selection => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse2005 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repositories, :list, ExOctocat.Model.Repository, options)
  end
end