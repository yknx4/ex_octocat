# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.UserSearchResultItem do
  @moduledoc """
  User Search Result Item
  """

  @derive [Poison.Encoder]
  defstruct [
    :login,
    :id,
    :node_id,
    :avatar_url,
    :gravatar_id,
    :url,
    :html_url,
    :followers_url,
    :subscriptions_url,
    :organizations_url,
    :repos_url,
    :received_events_url,
    :type,
    :score,
    :following_url,
    :gists_url,
    :starred_url,
    :events_url,
    :public_repos,
    :public_gists,
    :followers,
    :following,
    :created_at,
    :updated_at,
    :name,
    :bio,
    :email,
    :location,
    :site_admin,
    :hireable,
    :text_matches,
    :blog,
    :company,
    :suspended_at
  ]

  @type t :: %__MODULE__{
          :login => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :avatar_url => String.t(),
          :gravatar_id => String.t() | nil,
          :url => String.t(),
          :html_url => String.t(),
          :followers_url => String.t(),
          :subscriptions_url => String.t(),
          :organizations_url => String.t(),
          :repos_url => String.t(),
          :received_events_url => String.t(),
          :type => String.t(),
          :score => float(),
          :following_url => String.t(),
          :gists_url => String.t(),
          :starred_url => String.t(),
          :events_url => String.t(),
          :public_repos => integer() | nil,
          :public_gists => integer() | nil,
          :followers => integer() | nil,
          :following => integer() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :name => String.t() | nil,
          :bio => String.t() | nil,
          :email => String.t() | nil,
          :location => String.t() | nil,
          :site_admin => boolean(),
          :hireable => boolean() | nil,
          :text_matches => [map()] | nil,
          :blog => String.t() | nil,
          :company => String.t() | nil,
          :suspended_at => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.UserSearchResultItem do
  def decode(value, _options) do
    value
  end
end
