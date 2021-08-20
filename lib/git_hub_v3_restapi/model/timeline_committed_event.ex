# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TimelineCommittedEvent do
  @moduledoc """
  Timeline Committed Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :event,
    :sha,
    :node_id,
    :url,
    :author,
    :committer,
    :message,
    :tree,
    :parents,
    :verification,
    :html_url
  ]

  @type t :: %__MODULE__{
          :event => String.t() | nil,
          :sha => String.t(),
          :node_id => String.t(),
          :url => String.t(),
          :author => ExOctocat.Model.GitCommitAuthor.t(),
          :committer => ExOctocat.Model.GitCommitAuthor.t(),
          :message => String.t(),
          :tree => ExOctocat.Model.GitCommitTree.t(),
          :parents => [ExOctocat.Model.GitCommitParents.t()],
          :verification => ExOctocat.Model.GitCommitVerification.t(),
          :html_url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TimelineCommittedEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:author, :struct, ExOctocat.Model.GitCommitAuthor, options)
    |> deserialize(:committer, :struct, ExOctocat.Model.GitCommitAuthor, options)
    |> deserialize(:tree, :struct, ExOctocat.Model.GitCommitTree, options)
    |> deserialize(:parents, :list, ExOctocat.Model.GitCommitParents, options)
    |> deserialize(:verification, :struct, ExOctocat.Model.GitCommitVerification, options)
  end
end