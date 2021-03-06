# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RepositoryTemplateRepository do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :node_id,
    :name,
    :full_name,
    :owner,
    :private,
    :html_url,
    :description,
    :fork,
    :url,
    :archive_url,
    :assignees_url,
    :blobs_url,
    :branches_url,
    :collaborators_url,
    :comments_url,
    :commits_url,
    :compare_url,
    :contents_url,
    :contributors_url,
    :deployments_url,
    :downloads_url,
    :events_url,
    :forks_url,
    :git_commits_url,
    :git_refs_url,
    :git_tags_url,
    :git_url,
    :issue_comment_url,
    :issue_events_url,
    :issues_url,
    :keys_url,
    :labels_url,
    :languages_url,
    :merges_url,
    :milestones_url,
    :notifications_url,
    :pulls_url,
    :releases_url,
    :ssh_url,
    :stargazers_url,
    :statuses_url,
    :subscribers_url,
    :subscription_url,
    :tags_url,
    :teams_url,
    :trees_url,
    :clone_url,
    :mirror_url,
    :hooks_url,
    :svn_url,
    :homepage,
    :language,
    :forks_count,
    :stargazers_count,
    :watchers_count,
    :size,
    :default_branch,
    :open_issues_count,
    :is_template,
    :topics,
    :has_issues,
    :has_projects,
    :has_wiki,
    :has_pages,
    :has_downloads,
    :archived,
    :disabled,
    :visibility,
    :pushed_at,
    :created_at,
    :updated_at,
    :permissions,
    :allow_rebase_merge,
    :temp_clone_token,
    :allow_squash_merge,
    :allow_auto_merge,
    :delete_branch_on_merge,
    :allow_merge_commit,
    :subscribers_count,
    :network_count
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :node_id => String.t() | nil,
          :name => String.t() | nil,
          :full_name => String.t() | nil,
          :owner => ExOctocat.Model.RepositoryTemplateRepositoryOwner.t() | nil,
          :private => boolean() | nil,
          :html_url => String.t() | nil,
          :description => String.t() | nil,
          :fork => boolean() | nil,
          :url => String.t() | nil,
          :archive_url => String.t() | nil,
          :assignees_url => String.t() | nil,
          :blobs_url => String.t() | nil,
          :branches_url => String.t() | nil,
          :collaborators_url => String.t() | nil,
          :comments_url => String.t() | nil,
          :commits_url => String.t() | nil,
          :compare_url => String.t() | nil,
          :contents_url => String.t() | nil,
          :contributors_url => String.t() | nil,
          :deployments_url => String.t() | nil,
          :downloads_url => String.t() | nil,
          :events_url => String.t() | nil,
          :forks_url => String.t() | nil,
          :git_commits_url => String.t() | nil,
          :git_refs_url => String.t() | nil,
          :git_tags_url => String.t() | nil,
          :git_url => String.t() | nil,
          :issue_comment_url => String.t() | nil,
          :issue_events_url => String.t() | nil,
          :issues_url => String.t() | nil,
          :keys_url => String.t() | nil,
          :labels_url => String.t() | nil,
          :languages_url => String.t() | nil,
          :merges_url => String.t() | nil,
          :milestones_url => String.t() | nil,
          :notifications_url => String.t() | nil,
          :pulls_url => String.t() | nil,
          :releases_url => String.t() | nil,
          :ssh_url => String.t() | nil,
          :stargazers_url => String.t() | nil,
          :statuses_url => String.t() | nil,
          :subscribers_url => String.t() | nil,
          :subscription_url => String.t() | nil,
          :tags_url => String.t() | nil,
          :teams_url => String.t() | nil,
          :trees_url => String.t() | nil,
          :clone_url => String.t() | nil,
          :mirror_url => String.t() | nil,
          :hooks_url => String.t() | nil,
          :svn_url => String.t() | nil,
          :homepage => String.t() | nil,
          :language => String.t() | nil,
          :forks_count => integer() | nil,
          :stargazers_count => integer() | nil,
          :watchers_count => integer() | nil,
          :size => integer() | nil,
          :default_branch => String.t() | nil,
          :open_issues_count => integer() | nil,
          :is_template => boolean() | nil,
          :topics => [String.t()] | nil,
          :has_issues => boolean() | nil,
          :has_projects => boolean() | nil,
          :has_wiki => boolean() | nil,
          :has_pages => boolean() | nil,
          :has_downloads => boolean() | nil,
          :archived => boolean() | nil,
          :disabled => boolean() | nil,
          :visibility => String.t() | nil,
          :pushed_at => String.t() | nil,
          :created_at => String.t() | nil,
          :updated_at => String.t() | nil,
          :permissions => ExOctocat.Model.RepositoryTemplateRepositoryPermissions.t() | nil,
          :allow_rebase_merge => boolean() | nil,
          :temp_clone_token => String.t() | nil,
          :allow_squash_merge => boolean() | nil,
          :allow_auto_merge => boolean() | nil,
          :delete_branch_on_merge => boolean() | nil,
          :allow_merge_commit => boolean() | nil,
          :subscribers_count => integer() | nil,
          :network_count => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RepositoryTemplateRepository do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :owner,
      :struct,
      ExOctocat.Model.RepositoryTemplateRepositoryOwner,
      options
    )
    |> deserialize(
      :permissions,
      :struct,
      ExOctocat.Model.RepositoryTemplateRepositoryPermissions,
      options
    )
  end
end
