# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TimelineCrossReferencedEvent do
  @moduledoc """
  Timeline Cross Referenced Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :event,
    :actor,
    :created_at,
    :updated_at,
    :source
  ]

  @type t :: %__MODULE__{
          :event => String.t(),
          :actor => ExOctocat.Model.SimpleUser.t() | nil,
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :source => ExOctocat.Model.TimelineCrossReferencedEventSource.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TimelineCrossReferencedEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:actor, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(
      :source,
      :struct,
      ExOctocat.Model.TimelineCrossReferencedEventSource,
      options
    )
  end
end