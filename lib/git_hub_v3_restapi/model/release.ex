# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Release do
  @moduledoc """
  A release.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :html_url,
    :assets_url,
    :upload_url,
    :tarball_url,
    :zipball_url,
    :id,
    :node_id,
    :tag_name,
    :target_commitish,
    :name,
    :body,
    :draft,
    :prerelease,
    :created_at,
    :published_at,
    :author,
    :assets,
    :body_html,
    :body_text,
    :mentions_count,
    :discussion_url,
    :reactions
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :html_url => String.t(),
          :assets_url => String.t(),
          :upload_url => String.t(),
          :tarball_url => String.t() | nil,
          :zipball_url => String.t() | nil,
          :id => integer(),
          :node_id => String.t(),
          :tag_name => String.t(),
          :target_commitish => String.t(),
          :name => String.t() | nil,
          :body => String.t() | nil,
          :draft => boolean(),
          :prerelease => boolean(),
          :created_at => DateTime.t(),
          :published_at => DateTime.t() | nil,
          :author => ExOctocat.Model.SimpleUser.t() | nil,
          :assets => [ExOctocat.Model.ReleaseAsset.t()],
          :body_html => String.t() | nil,
          :body_text => String.t() | nil,
          :mentions_count => integer() | nil,
          :discussion_url => String.t() | nil,
          :reactions => ExOctocat.Model.ReactionRollup.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Release do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:author, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:assets, :list, ExOctocat.Model.ReleaseAsset, options)
    |> deserialize(:reactions, :struct, ExOctocat.Model.ReactionRollup, options)
  end
end
