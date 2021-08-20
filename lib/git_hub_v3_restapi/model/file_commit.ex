# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.FileCommit do
  @moduledoc """
  File Commit
  """

  @derive [Poison.Encoder]
  defstruct [
    :content,
    :commit
  ]

  @type t :: %__MODULE__{
          :content => ExOctocat.Model.FileCommitContent.t() | nil,
          :commit => ExOctocat.Model.FileCommitCommit.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.FileCommit do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:content, :struct, ExOctocat.Model.FileCommitContent, options)
    |> deserialize(:commit, :struct, ExOctocat.Model.FileCommitCommit, options)
  end
end
