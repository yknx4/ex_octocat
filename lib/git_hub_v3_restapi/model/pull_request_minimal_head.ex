# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestMinimalHead do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ref,
    :sha,
    :repo
  ]

  @type t :: %__MODULE__{
          :ref => String.t(),
          :sha => String.t(),
          :repo => ExOctocat.Model.PullRequestMinimalHeadRepo.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestMinimalHead do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repo, :struct, ExOctocat.Model.PullRequestMinimalHeadRepo, options)
  end
end
