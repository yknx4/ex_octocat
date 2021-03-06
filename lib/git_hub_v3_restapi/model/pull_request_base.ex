# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestBase do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :label,
    :ref,
    :repo,
    :sha,
    :user
  ]

  @type t :: %__MODULE__{
          :label => String.t(),
          :ref => String.t(),
          :repo => ExOctocat.Model.PullRequestBaseRepo.t(),
          :sha => String.t(),
          :user => ExOctocat.Model.PullRequestHeadRepoOwner.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestBase do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repo, :struct, ExOctocat.Model.PullRequestBaseRepo, options)
    |> deserialize(:user, :struct, ExOctocat.Model.PullRequestHeadRepoOwner, options)
  end
end
