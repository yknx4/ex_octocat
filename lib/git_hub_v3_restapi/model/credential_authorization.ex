# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CredentialAuthorization do
  @moduledoc """
  Credential Authorization
  """

  @derive [Poison.Encoder]
  defstruct [
    :login,
    :credential_id,
    :credential_type,
    :token_last_eight,
    :credential_authorized_at,
    :scopes,
    :fingerprint,
    :credential_accessed_at,
    :authorized_credential_id,
    :authorized_credential_title,
    :authorized_credential_note
  ]

  @type t :: %__MODULE__{
          :login => String.t(),
          :credential_id => integer(),
          :credential_type => String.t(),
          :token_last_eight => String.t() | nil,
          :credential_authorized_at => DateTime.t(),
          :scopes => [String.t()] | nil,
          :fingerprint => String.t() | nil,
          :credential_accessed_at => DateTime.t() | nil,
          :authorized_credential_id => integer() | nil,
          :authorized_credential_title => String.t() | nil,
          :authorized_credential_note => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CredentialAuthorization do
  def decode(value, _options) do
    value
  end
end