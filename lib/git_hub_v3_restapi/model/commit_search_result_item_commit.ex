# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CommitSearchResultItemCommit do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :author,
    :committer,
    :comment_count,
    :message,
    :tree,
    :url,
    :verification
  ]

  @type t :: %__MODULE__{
          :author => ExOctocat.Model.CommitSearchResultItemCommitAuthor.t(),
          :committer => GitUser | nil,
          :comment_count => integer(),
          :message => String.t(),
          :tree => ExOctocat.Model.ShortBranchCommit.t(),
          :url => String.t(),
          :verification => ExOctocat.Model.Verification.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CommitSearchResultItemCommit do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :author,
      :struct,
      ExOctocat.Model.CommitSearchResultItemCommitAuthor,
      options
    )
    |> deserialize(:committer, :struct, ExOctocat.Model.GitUser, options)
    |> deserialize(:tree, :struct, ExOctocat.Model.ShortBranchCommit, options)
    |> deserialize(:verification, :struct, ExOctocat.Model.Verification, options)
  end
end