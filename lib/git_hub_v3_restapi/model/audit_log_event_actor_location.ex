# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.AuditLogEventActorLocation do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :country_name
  ]

  @type t :: %__MODULE__{
          :country_name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.AuditLogEventActorLocation do
  def decode(value, _options) do
    value
  end
end
