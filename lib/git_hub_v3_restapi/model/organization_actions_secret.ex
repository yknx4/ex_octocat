# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.OrganizationActionsSecret do
  @moduledoc """
  Secrets for GitHub Actions for an organization.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :created_at,
    :updated_at,
    :visibility,
    :selected_repositories_url
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :visibility => String.t(),
          :selected_repositories_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.OrganizationActionsSecret do
  def decode(value, _options) do
    value
  end
end