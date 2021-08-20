# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.MinimalRepository do
  @moduledoc """
  Minimal Repository
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
    :template_repository,
    :temp_clone_token,
    :delete_branch_on_merge,
    :subscribers_count,
    :network_count,
    :code_of_conduct,
    :license,
    :forks,
    :open_issues,
    :watchers
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :node_id => String.t(),
          :name => String.t(),
          :full_name => String.t(),
          :owner => ExOctocat.Model.SimpleUser.t() | nil,
          :private => boolean(),
          :html_url => String.t(),
          :description => String.t() | nil,
          :fork => boolean(),
          :url => String.t(),
          :archive_url => String.t(),
          :assignees_url => String.t(),
          :blobs_url => String.t(),
          :branches_url => String.t(),
          :collaborators_url => String.t(),
          :comments_url => String.t(),
          :commits_url => String.t(),
          :compare_url => String.t(),
          :contents_url => String.t(),
          :contributors_url => String.t(),
          :deployments_url => String.t(),
          :downloads_url => String.t(),
          :events_url => String.t(),
          :forks_url => String.t(),
          :git_commits_url => String.t(),
          :git_refs_url => String.t(),
          :git_tags_url => String.t(),
          :git_url => String.t() | nil,
          :issue_comment_url => String.t(),
          :issue_events_url => String.t(),
          :issues_url => String.t(),
          :keys_url => String.t(),
          :labels_url => String.t(),
          :languages_url => String.t(),
          :merges_url => String.t(),
          :milestones_url => String.t(),
          :notifications_url => String.t(),
          :pulls_url => String.t(),
          :releases_url => String.t(),
          :ssh_url => String.t() | nil,
          :stargazers_url => String.t(),
          :statuses_url => String.t(),
          :subscribers_url => String.t(),
          :subscription_url => String.t(),
          :tags_url => String.t(),
          :teams_url => String.t(),
          :trees_url => String.t(),
          :clone_url => String.t() | nil,
          :mirror_url => String.t() | nil,
          :hooks_url => String.t(),
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
          :pushed_at => DateTime.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :permissions => ExOctocat.Model.MinimalRepositoryPermissions.t() | nil,
          :template_repository => map() | nil,
          :temp_clone_token => String.t() | nil,
          :delete_branch_on_merge => boolean() | nil,
          :subscribers_count => integer() | nil,
          :network_count => integer() | nil,
          :code_of_conduct => ExOctocat.Model.CodeOfConduct.t() | nil,
          :license => ExOctocat.Model.MinimalRepositoryLicense.t() | nil,
          :forks => integer() | nil,
          :open_issues => integer() | nil,
          :watchers => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.MinimalRepository do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:owner, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(
      :permissions,
      :struct,
      ExOctocat.Model.MinimalRepositoryPermissions,
      options
    )
    |> deserialize(:template_repository, :struct, ExOctocat.Model.Repository, options)
    |> deserialize(:code_of_conduct, :struct, ExOctocat.Model.CodeOfConduct, options)
    |> deserialize(:license, :struct, ExOctocat.Model.MinimalRepositoryLicense, options)
  end
end
