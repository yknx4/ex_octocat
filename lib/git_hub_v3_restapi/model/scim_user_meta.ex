# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ScimUserMeta do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :resourceType,
    :created,
    :lastModified,
    :location
  ]

  @type t :: %__MODULE__{
          :resourceType => String.t() | nil,
          :created => DateTime.t() | nil,
          :lastModified => DateTime.t() | nil,
          :location => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ScimUserMeta do
  def decode(value, _options) do
    value
  end
end
