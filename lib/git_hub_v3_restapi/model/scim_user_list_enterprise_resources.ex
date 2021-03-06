# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimUserListEnterpriseResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :schemas,
    :id,
    :externalId,
    :userName,
    :name,
    :emails,
    :groups,
    :active,
    :meta
  ]

  @type t :: %__MODULE__{
          :schemas => [String.t()],
          :id => String.t(),
          :externalId => String.t() | nil,
          :userName => String.t() | nil,
          :name => ExOctocat.Model.ScimUserListEnterpriseName.t() | nil,
          :emails => [ExOctocat.Model.ScimUserListEnterpriseEmails.t()] | nil,
          :groups => [ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersGroups.t()] | nil,
          :active => boolean() | nil,
          :meta => ExOctocat.Model.ScimGroupListEnterpriseMeta.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimUserListEnterpriseResources do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:name, :struct, ExOctocat.Model.ScimUserListEnterpriseName, options)
    |> deserialize(:emails, :list, ExOctocat.Model.ScimUserListEnterpriseEmails, options)
    |> deserialize(
      :groups,
      :list,
      ExOctocat.Model.ScimV2EnterprisesEnterpriseUsersGroups,
      options
    )
    |> deserialize(:meta, :struct, ExOctocat.Model.ScimGroupListEnterpriseMeta, options)
  end
end
