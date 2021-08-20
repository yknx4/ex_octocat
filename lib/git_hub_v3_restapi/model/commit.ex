# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Commit do
  @moduledoc """
  Commit
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :sha,
    :node_id,
    :html_url,
    :comments_url,
    :commit,
    :author,
    :committer,
    :parents,
    :stats,
    :files
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :sha => String.t(),
          :node_id => String.t(),
          :html_url => String.t(),
          :comments_url => String.t(),
          :commit => ExOctocat.Model.CommitCommit.t(),
          :author => SimpleUser | nil,
          :committer => SimpleUser | nil,
          :parents => [ExOctocat.Model.CommitParents.t()],
          :stats => ExOctocat.Model.CommitStats.t() | nil,
          :files => [ExOctocat.Model.CommitFiles.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Commit do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:commit, :struct, ExOctocat.Model.CommitCommit, options)
    |> deserialize(:author, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:committer, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:parents, :list, ExOctocat.Model.CommitParents, options)
    |> deserialize(:stats, :struct, ExOctocat.Model.CommitStats, options)
    |> deserialize(:files, :list, ExOctocat.Model.CommitFiles, options)
  end
end
