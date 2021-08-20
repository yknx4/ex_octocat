# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.AppPermissions do
  @moduledoc """
  The permissions granted to the user-to-server access token.
  """

  @derive [Poison.Encoder]
  defstruct [
    :actions,
    :administration,
    :checks,
    :content_references,
    :contents,
    :deployments,
    :environments,
    :issues,
    :metadata,
    :packages,
    :pages,
    :pull_requests,
    :repository_hooks,
    :repository_projects,
    :secret_scanning_alerts,
    :secrets,
    :security_events,
    :single_file,
    :statuses,
    :vulnerability_alerts,
    :workflows,
    :members,
    :organization_administration,
    :organization_hooks,
    :organization_plan,
    :organization_projects,
    :organization_packages,
    :organization_secrets,
    :organization_self_hosted_runners,
    :organization_user_blocking,
    :team_discussions
  ]

  @type t :: %__MODULE__{
          :actions => String.t() | nil,
          :administration => String.t() | nil,
          :checks => String.t() | nil,
          :content_references => String.t() | nil,
          :contents => String.t() | nil,
          :deployments => String.t() | nil,
          :environments => String.t() | nil,
          :issues => String.t() | nil,
          :metadata => String.t() | nil,
          :packages => String.t() | nil,
          :pages => String.t() | nil,
          :pull_requests => String.t() | nil,
          :repository_hooks => String.t() | nil,
          :repository_projects => String.t() | nil,
          :secret_scanning_alerts => String.t() | nil,
          :secrets => String.t() | nil,
          :security_events => String.t() | nil,
          :single_file => String.t() | nil,
          :statuses => String.t() | nil,
          :vulnerability_alerts => String.t() | nil,
          :workflows => String.t() | nil,
          :members => String.t() | nil,
          :organization_administration => String.t() | nil,
          :organization_hooks => String.t() | nil,
          :organization_plan => String.t() | nil,
          :organization_projects => String.t() | nil,
          :organization_packages => String.t() | nil,
          :organization_secrets => String.t() | nil,
          :organization_self_hosted_runners => String.t() | nil,
          :organization_user_blocking => String.t() | nil,
          :team_discussions => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.AppPermissions do
  def decode(value, _options) do
    value
  end
end
