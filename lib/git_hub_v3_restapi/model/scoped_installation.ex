# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScopedInstallation do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :permissions,
    :repository_selection,
    :single_file_name,
    :has_multiple_single_files,
    :single_file_paths,
    :repositories_url,
    :account
  ]

  @type t :: %__MODULE__{
          :permissions => ExOctocat.Model.AppPermissions.t(),
          :repository_selection => String.t(),
          :single_file_name => String.t() | nil,
          :has_multiple_single_files => boolean() | nil,
          :single_file_paths => [String.t()] | nil,
          :repositories_url => String.t(),
          :account => ExOctocat.Model.SimpleUser.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScopedInstallation do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:permissions, :struct, ExOctocat.Model.AppPermissions, options)
    |> deserialize(:account, :struct, ExOctocat.Model.SimpleUser, options)
  end
end
