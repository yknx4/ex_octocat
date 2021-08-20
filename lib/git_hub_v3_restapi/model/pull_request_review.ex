# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestReview do
  @moduledoc """
  Pull Request Reviews are reviews on pull requests.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :node_id,
    :user,
    :body,
    :state,
    :html_url,
    :pull_request_url,
    :_links,
    :submitted_at,
    :commit_id,
    :body_html,
    :body_text,
    :author_association
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :node_id => String.t(),
          :user => SimpleUser | nil,
          :body => String.t(),
          :state => String.t(),
          :html_url => String.t(),
          :pull_request_url => String.t(),
          :_links => ExOctocat.Model.TimelineReviewedEventLinks.t(),
          :submitted_at => DateTime.t() | nil,
          :commit_id => String.t(),
          :body_html => String.t() | nil,
          :body_text => String.t() | nil,
          :author_association => ExOctocat.Model.AuthorAssociation.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestReview do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.TimelineReviewedEventLinks, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
  end
end
