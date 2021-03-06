# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Package do
  @moduledoc """
  A software package
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :package_type,
    :url,
    :html_url,
    :version_count,
    :visibility,
    :owner,
    :repository,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :name => String.t(),
          :package_type => String.t(),
          :url => String.t(),
          :html_url => String.t(),
          :version_count => integer(),
          :visibility => String.t(),
          :owner => SimpleUser | nil,
          :repository => MinimalRepository | nil,
          :created_at => DateTime.t(),
          :updated_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Package do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:owner, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:repository, :struct, ExOctocat.Model.MinimalRepository, options)
  end
end
