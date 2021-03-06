# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RepositoryCollaboratorPermission do
  @moduledoc """
  Repository Collaborator Permission
  """

  @derive [Poison.Encoder]
  defstruct [
    :permission,
    :user
  ]

  @type t :: %__MODULE__{
          :permission => String.t(),
          :user => SimpleUser | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RepositoryCollaboratorPermission do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
  end
end
