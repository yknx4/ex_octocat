# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RepositoryPermissions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :admin,
    :pull,
    :triage,
    :push,
    :maintain
  ]

  @type t :: %__MODULE__{
          :admin => boolean(),
          :pull => boolean(),
          :triage => boolean() | nil,
          :push => boolean(),
          :maintain => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RepositoryPermissions do
  def decode(value, _options) do
    value
  end
end
