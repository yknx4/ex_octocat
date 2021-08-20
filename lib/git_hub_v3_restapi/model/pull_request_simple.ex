# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestSimple do
  @moduledoc """
  Pull Request Simple
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :id,
    :node_id,
    :html_url,
    :diff_url,
    :patch_url,
    :issue_url,
    :commits_url,
    :review_comments_url,
    :review_comment_url,
    :comments_url,
    :statuses_url,
    :number,
    :state,
    :locked,
    :title,
    :user,
    :body,
    :labels,
    :milestone,
    :active_lock_reason,
    :created_at,
    :updated_at,
    :closed_at,
    :merged_at,
    :merge_commit_sha,
    :assignee,
    :assignees,
    :requested_reviewers,
    :requested_teams,
    :head,
    :base,
    :_links,
    :author_association,
    :auto_merge,
    :draft
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :html_url => String.t(),
          :diff_url => String.t(),
          :patch_url => String.t(),
          :issue_url => String.t(),
          :commits_url => String.t(),
          :review_comments_url => String.t(),
          :review_comment_url => String.t(),
          :comments_url => String.t(),
          :statuses_url => String.t(),
          :number => integer(),
          :state => String.t(),
          :locked => boolean(),
          :title => String.t(),
          :user => SimpleUser | nil,
          :body => String.t() | nil,
          :labels => [ExOctocat.Model.PullRequestSimpleLabels.t()],
          :milestone => Milestone | nil,
          :active_lock_reason => String.t() | nil,
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :closed_at => DateTime.t() | nil,
          :merged_at => DateTime.t() | nil,
          :merge_commit_sha => String.t() | nil,
          :assignee => SimpleUser | nil,
          :assignees => [ExOctocat.Model.SimpleUser.t()] | nil,
          :requested_reviewers => [ExOctocat.Model.SimpleUser.t()] | nil,
          :requested_teams => [ExOctocat.Model.Team.t()] | nil,
          :head => ExOctocat.Model.PullRequestSimpleHead.t(),
          :base => ExOctocat.Model.PullRequestSimpleHead.t(),
          :_links => ExOctocat.Model.PullRequestSimpleLinks.t(),
          :author_association => ExOctocat.Model.AuthorAssociation.t(),
          :auto_merge => ExOctocat.Model.AutoMerge.t() | nil,
          :draft => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestSimple do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:labels, :list, ExOctocat.Model.PullRequestSimpleLabels, options)
    |> deserialize(:milestone, :struct, ExOctocat.Model.Milestone, options)
    |> deserialize(:assignee, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:assignees, :list, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:requested_reviewers, :list, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:requested_teams, :list, ExOctocat.Model.Team, options)
    |> deserialize(:head, :struct, ExOctocat.Model.PullRequestSimpleHead, options)
    |> deserialize(:base, :struct, ExOctocat.Model.PullRequestSimpleHead, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.PullRequestSimpleLinks, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
    |> deserialize(:auto_merge, :struct, ExOctocat.Model.AutoMerge, options)
  end
end
