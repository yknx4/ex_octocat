# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TimelineIssueEvents do
  @moduledoc """
  Timeline Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :node_id,
    :url,
    :actor,
    :event,
    :commit_id,
    :commit_url,
    :created_at,
    :performed_via_github_app,
    :label,
    :milestone,
    :rename,
    :review_requester,
    :requested_team,
    :requested_reviewer,
    :dismissed_review,
    :lock_reason,
    :project_card,
    :body,
    :body_text,
    :body_html,
    :html_url,
    :user,
    :updated_at,
    :issue_url,
    :author_association,
    :reactions,
    :source,
    :sha,
    :author,
    :committer,
    :message,
    :tree,
    :parents,
    :verification,
    :state,
    :pull_request_url,
    :_links,
    :submitted_at,
    :comments,
    :assignee
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :node_id => String.t(),
          :url => String.t(),
          :actor => ExOctocat.Model.SimpleUser.t() | nil,
          :event => String.t(),
          :commit_id => String.t() | nil,
          :commit_url => String.t() | nil,
          :created_at => String.t(),
          :performed_via_github_app => ExOctocat.Model.Integration.t() | nil,
          :label => ExOctocat.Model.LabeledIssueEventLabel.t(),
          :milestone => ExOctocat.Model.MilestonedIssueEventMilestone.t(),
          :rename => ExOctocat.Model.RenamedIssueEventRename.t(),
          :review_requester => ExOctocat.Model.SimpleUser.t() | nil,
          :requested_team => ExOctocat.Model.Team.t() | nil,
          :requested_reviewer => ExOctocat.Model.SimpleUser.t() | nil,
          :dismissed_review => ExOctocat.Model.ReviewDismissedIssueEventDismissedReview.t(),
          :lock_reason => String.t() | nil,
          :project_card => ExOctocat.Model.AddedToProjectIssueEventProjectCard.t() | nil,
          :body => String.t() | nil,
          :body_text => String.t() | nil,
          :body_html => String.t() | nil,
          :html_url => String.t(),
          :user => ExOctocat.Model.SimpleUser.t() | nil,
          :updated_at => DateTime.t(),
          :issue_url => String.t(),
          :author_association => ExOctocat.Model.AuthorAssociation.t(),
          :reactions => ExOctocat.Model.ReactionRollup.t() | nil,
          :source => ExOctocat.Model.TimelineCrossReferencedEventSource.t(),
          :sha => String.t(),
          :author => ExOctocat.Model.GitCommitAuthor.t(),
          :committer => ExOctocat.Model.GitCommitAuthor.t(),
          :message => String.t(),
          :tree => ExOctocat.Model.GitCommitTree.t(),
          :parents => [ExOctocat.Model.GitCommitParents.t()],
          :verification => ExOctocat.Model.GitCommitVerification.t(),
          :state => String.t(),
          :pull_request_url => String.t(),
          :_links => ExOctocat.Model.TimelineReviewedEventLinks.t(),
          :submitted_at => DateTime.t() | nil,
          :comments => [ExOctocat.Model.CommitComment.t()] | nil,
          :assignee => ExOctocat.Model.SimpleUser.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TimelineIssueEvents do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:actor, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:performed_via_github_app, :struct, ExOctocat.Model.Integration, options)
    |> deserialize(:label, :struct, ExOctocat.Model.LabeledIssueEventLabel, options)
    |> deserialize(
      :milestone,
      :struct,
      ExOctocat.Model.MilestonedIssueEventMilestone,
      options
    )
    |> deserialize(:rename, :struct, ExOctocat.Model.RenamedIssueEventRename, options)
    |> deserialize(:review_requester, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:requested_team, :struct, ExOctocat.Model.Team, options)
    |> deserialize(:requested_reviewer, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(
      :dismissed_review,
      :struct,
      ExOctocat.Model.ReviewDismissedIssueEventDismissedReview,
      options
    )
    |> deserialize(
      :project_card,
      :struct,
      ExOctocat.Model.AddedToProjectIssueEventProjectCard,
      options
    )
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
    |> deserialize(:reactions, :struct, ExOctocat.Model.ReactionRollup, options)
    |> deserialize(
      :source,
      :struct,
      ExOctocat.Model.TimelineCrossReferencedEventSource,
      options
    )
    |> deserialize(:author, :struct, ExOctocat.Model.GitCommitAuthor, options)
    |> deserialize(:committer, :struct, ExOctocat.Model.GitCommitAuthor, options)
    |> deserialize(:tree, :struct, ExOctocat.Model.GitCommitTree, options)
    |> deserialize(:parents, :list, ExOctocat.Model.GitCommitParents, options)
    |> deserialize(:verification, :struct, ExOctocat.Model.GitCommitVerification, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.TimelineReviewedEventLinks, options)
    |> deserialize(:comments, :list, ExOctocat.Model.CommitComment, options)
    |> deserialize(:assignee, :struct, ExOctocat.Model.SimpleUser, options)
  end
end