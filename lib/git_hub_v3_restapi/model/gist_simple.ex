# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GistSimple do
  @moduledoc """
  Gist Simple
  """

  @derive [Poison.Encoder]
  defstruct [
    :forks,
    :history,
    :fork_of,
    :url,
    :forks_url,
    :commits_url,
    :id,
    :node_id,
    :git_pull_url,
    :git_push_url,
    :html_url,
    :files,
    :public,
    :created_at,
    :updated_at,
    :description,
    :comments,
    :user,
    :comments_url,
    :owner,
    :truncated
  ]

  @type t :: %__MODULE__{
          :forks => [ExOctocat.Model.GistSimpleForks.t()] | nil,
          :history => [ExOctocat.Model.GistHistory.t()] | nil,
          :fork_of => ExOctocat.Model.Gist.t() | nil,
          :url => String.t() | nil,
          :forks_url => String.t() | nil,
          :commits_url => String.t() | nil,
          :id => String.t() | nil,
          :node_id => String.t() | nil,
          :git_pull_url => String.t() | nil,
          :git_push_url => String.t() | nil,
          :html_url => String.t() | nil,
          :files => %{optional(String.t()) => ExOctocat.Model.GistSimpleFiles.t()} | nil,
          :public => boolean() | nil,
          :created_at => String.t() | nil,
          :updated_at => String.t() | nil,
          :description => String.t() | nil,
          :comments => integer() | nil,
          :user => String.t() | nil,
          :comments_url => String.t() | nil,
          :owner => ExOctocat.Model.SimpleUser.t() | nil,
          :truncated => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GistSimple do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:forks, :list, ExOctocat.Model.GistSimpleForks, options)
    |> deserialize(:history, :list, ExOctocat.Model.GistHistory, options)
    |> deserialize(:fork_of, :struct, ExOctocat.Model.Gist, options)
    |> deserialize(:files, :map, ExOctocat.Model.GistSimpleFiles, options)
    |> deserialize(:owner, :struct, ExOctocat.Model.SimpleUser, options)
  end
end