# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestHeadRepoOwner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :avatar_url,
    :events_url,
    :followers_url,
    :following_url,
    :gists_url,
    :gravatar_id,
    :html_url,
    :id,
    :node_id,
    :login,
    :organizations_url,
    :received_events_url,
    :repos_url,
    :site_admin,
    :starred_url,
    :subscriptions_url,
    :type,
    :url
  ]

  @type t :: %__MODULE__{
          :avatar_url => String.t(),
          :events_url => String.t(),
          :followers_url => String.t(),
          :following_url => String.t(),
          :gists_url => String.t(),
          :gravatar_id => String.t() | nil,
          :html_url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :login => String.t(),
          :organizations_url => String.t(),
          :received_events_url => String.t(),
          :repos_url => String.t(),
          :site_admin => boolean(),
          :starred_url => String.t(),
          :subscriptions_url => String.t(),
          :type => String.t(),
          :url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestHeadRepoOwner do
  def decode(value, _options) do
    value
  end
end
