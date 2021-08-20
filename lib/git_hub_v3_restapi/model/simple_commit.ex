# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.SimpleCommit do
  @moduledoc """
  Simple Commit
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :tree_id,
    :message,
    :timestamp,
    :author,
    :committer
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :tree_id => String.t(),
          :message => String.t(),
          :timestamp => DateTime.t(),
          :author => ExOctocat.Model.SimpleCommitAuthor.t() | nil,
          :committer => ExOctocat.Model.SimpleCommitAuthor.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.SimpleCommit do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:author, :struct, ExOctocat.Model.SimpleCommitAuthor, options)
    |> deserialize(:committer, :struct, ExOctocat.Model.SimpleCommitAuthor, options)
  end
end
