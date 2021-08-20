# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PageBuild do
  @moduledoc """
  Page Build
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :status,
    :error,
    :pusher,
    :commit,
    :duration,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :status => String.t(),
          :error => ExOctocat.Model.PageBuildError.t(),
          :pusher => SimpleUser | nil,
          :commit => String.t(),
          :duration => integer(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PageBuild do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:error, :struct, ExOctocat.Model.PageBuildError, options)
    |> deserialize(:pusher, :struct, ExOctocat.Model.SimpleUser, options)
  end
end