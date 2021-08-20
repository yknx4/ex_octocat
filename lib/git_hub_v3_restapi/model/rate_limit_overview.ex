# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RateLimitOverview do
  @moduledoc """
  Rate Limit Overview
  """

  @derive [Poison.Encoder]
  defstruct [
    :resources,
    :rate
  ]

  @type t :: %__MODULE__{
          :resources => ExOctocat.Model.RateLimitOverviewResources.t(),
          :rate => ExOctocat.Model.RateLimit.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RateLimitOverview do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:resources, :struct, ExOctocat.Model.RateLimitOverviewResources, options)
    |> deserialize(:rate, :struct, ExOctocat.Model.RateLimit, options)
  end
end