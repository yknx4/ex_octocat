# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.OrganizationFull do
  @moduledoc """
  Organization Full
  """

  @derive [Poison.Encoder]
  defstruct [
    :login,
    :id,
    :node_id,
    :url,
    :repos_url,
    :events_url,
    :hooks_url,
    :issues_url,
    :members_url,
    :public_members_url,
    :avatar_url,
    :description,
    :name,
    :company,
    :blog,
    :location,
    :email,
    :twitter_username,
    :is_verified,
    :has_organization_projects,
    :has_repository_projects,
    :public_repos,
    :public_gists,
    :followers,
    :following,
    :html_url,
    :created_at,
    :type,
    :total_private_repos,
    :owned_private_repos,
    :private_gists,
    :disk_usage,
    :collaborators,
    :billing_email,
    :plan,
    :default_repository_permission,
    :members_can_create_repositories,
    :two_factor_requirement_enabled,
    :members_allowed_repository_creation_type,
    :members_can_create_public_repositories,
    :members_can_create_private_repositories,
    :members_can_create_internal_repositories,
    :members_can_create_pages,
    :members_can_create_public_pages,
    :members_can_create_private_pages,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :login => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :url => String.t(),
          :repos_url => String.t(),
          :events_url => String.t(),
          :hooks_url => String.t(),
          :issues_url => String.t(),
          :members_url => String.t(),
          :public_members_url => String.t(),
          :avatar_url => String.t(),
          :description => String.t() | nil,
          :name => String.t() | nil,
          :company => String.t() | nil,
          :blog => String.t() | nil,
          :location => String.t() | nil,
          :email => String.t() | nil,
          :twitter_username => String.t() | nil,
          :is_verified => boolean() | nil,
          :has_organization_projects => boolean(),
          :has_repository_projects => boolean(),
          :public_repos => integer(),
          :public_gists => integer(),
          :followers => integer(),
          :following => integer(),
          :html_url => String.t(),
          :created_at => DateTime.t(),
          :type => String.t(),
          :total_private_repos => integer() | nil,
          :owned_private_repos => integer() | nil,
          :private_gists => integer() | nil,
          :disk_usage => integer() | nil,
          :collaborators => integer() | nil,
          :billing_email => String.t() | nil,
          :plan => ExOctocat.Model.OrganizationFullPlan.t() | nil,
          :default_repository_permission => String.t() | nil,
          :members_can_create_repositories => boolean() | nil,
          :two_factor_requirement_enabled => boolean() | nil,
          :members_allowed_repository_creation_type => String.t() | nil,
          :members_can_create_public_repositories => boolean() | nil,
          :members_can_create_private_repositories => boolean() | nil,
          :members_can_create_internal_repositories => boolean() | nil,
          :members_can_create_pages => boolean() | nil,
          :members_can_create_public_pages => boolean() | nil,
          :members_can_create_private_pages => boolean() | nil,
          :updated_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.OrganizationFull do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:plan, :struct, ExOctocat.Model.OrganizationFullPlan, options)
  end
end
