# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GistCommit do
  @moduledoc """
  Gist Commit
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :version,
    :user,
    :change_status,
    :committed_at
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :version => String.t(),
          :user => SimpleUser | nil,
          :change_status => ExOctocat.Model.GistHistoryChangeStatus.t(),
          :committed_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GistCommit do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(
      :change_status,
      :struct,
      ExOctocat.Model.GistHistoryChangeStatus,
      options
    )
  end
end
