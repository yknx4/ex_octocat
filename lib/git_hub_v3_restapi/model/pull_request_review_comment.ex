# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestReviewComment do
  @moduledoc """
  Pull Request Review Comments are comments on a portion of the Pull Request's diff.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :pull_request_review_id,
    :id,
    :node_id,
    :diff_hunk,
    :path,
    :position,
    :original_position,
    :commit_id,
    :original_commit_id,
    :in_reply_to_id,
    :user,
    :body,
    :created_at,
    :updated_at,
    :html_url,
    :pull_request_url,
    :author_association,
    :_links,
    :start_line,
    :original_start_line,
    :start_side,
    :line,
    :original_line,
    :side,
    :reactions,
    :body_html,
    :body_text
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :pull_request_review_id => integer() | nil,
          :id => integer(),
          :node_id => String.t(),
          :diff_hunk => String.t(),
          :path => String.t(),
          :position => integer(),
          :original_position => integer(),
          :commit_id => String.t(),
          :original_commit_id => String.t(),
          :in_reply_to_id => integer() | nil,
          :user => ExOctocat.Model.SimpleUser.t() | nil,
          :body => String.t(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :html_url => String.t(),
          :pull_request_url => String.t(),
          :author_association => ExOctocat.Model.AuthorAssociation.t(),
          :_links => ExOctocat.Model.PullRequestReviewCommentLinks.t(),
          :start_line => integer() | nil,
          :original_start_line => integer() | nil,
          :start_side => String.t() | nil,
          :line => integer() | nil,
          :original_line => integer() | nil,
          :side => String.t() | nil,
          :reactions => ExOctocat.Model.ReactionRollup.t() | nil,
          :body_html => String.t() | nil,
          :body_text => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestReviewComment do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.PullRequestReviewCommentLinks, options)
    |> deserialize(:reactions, :struct, ExOctocat.Model.ReactionRollup, options)
  end
end
