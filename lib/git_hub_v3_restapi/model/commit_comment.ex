# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CommitComment do
  @moduledoc """
  Commit Comment
  """

  @derive [Poison.Encoder]
  defstruct [
    :html_url,
    :url,
    :id,
    :node_id,
    :body,
    :path,
    :position,
    :line,
    :commit_id,
    :user,
    :created_at,
    :updated_at,
    :author_association,
    :reactions
  ]

  @type t :: %__MODULE__{
          :html_url => String.t(),
          :url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :body => String.t(),
          :path => String.t() | nil,
          :position => integer() | nil,
          :line => integer() | nil,
          :commit_id => String.t(),
          :user => SimpleUser | nil,
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :author_association => ExOctocat.Model.AuthorAssociation.t(),
          :reactions => ExOctocat.Model.ReactionRollup.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CommitComment do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
    |> deserialize(:reactions, :struct, ExOctocat.Model.ReactionRollup, options)
  end
end