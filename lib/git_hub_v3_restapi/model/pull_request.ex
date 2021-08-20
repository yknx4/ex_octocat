# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequest do
  @moduledoc """
  Pull requests let you tell others about changes you've pushed to a repository on GitHub. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary.
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
    :draft,
    :merged,
    :mergeable,
    :rebaseable,
    :mergeable_state,
    :merged_by,
    :comments,
    :review_comments,
    :maintainer_can_modify,
    :commits,
    :additions,
    :deletions,
    :changed_files
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
          :labels => [ExOctocat.Model.PullRequestLabels.t()],
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
          :requested_teams => [ExOctocat.Model.TeamSimple.t()] | nil,
          :head => ExOctocat.Model.PullRequestHead.t(),
          :base => ExOctocat.Model.PullRequestBase.t(),
          :_links => ExOctocat.Model.PullRequestSimpleLinks.t(),
          :author_association => ExOctocat.Model.AuthorAssociation.t(),
          :auto_merge => ExOctocat.Model.AutoMerge.t() | nil,
          :draft => boolean() | nil,
          :merged => boolean(),
          :mergeable => boolean() | nil,
          :rebaseable => boolean() | nil,
          :mergeable_state => String.t(),
          :merged_by => SimpleUser | nil,
          :comments => integer(),
          :review_comments => integer(),
          :maintainer_can_modify => boolean(),
          :commits => integer(),
          :additions => integer(),
          :deletions => integer(),
          :changed_files => integer()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequest do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:labels, :list, ExOctocat.Model.PullRequestLabels, options)
    |> deserialize(:milestone, :struct, ExOctocat.Model.Milestone, options)
    |> deserialize(:assignee, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:assignees, :list, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:requested_reviewers, :list, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:requested_teams, :list, ExOctocat.Model.TeamSimple, options)
    |> deserialize(:head, :struct, ExOctocat.Model.PullRequestHead, options)
    |> deserialize(:base, :struct, ExOctocat.Model.PullRequestBase, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.PullRequestSimpleLinks, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
    |> deserialize(:auto_merge, :struct, ExOctocat.Model.AutoMerge, options)
    |> deserialize(:merged_by, :struct, ExOctocat.Model.SimpleUser, options)
  end
end
