# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InteractionLimitResponse do
  @moduledoc """
  Interaction limit settings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :limit,
    :origin,
    :expires_at
  ]

  @type t :: %__MODULE__{
          :limit => ExOctocat.Model.InteractionGroup.t(),
          :origin => String.t(),
          :expires_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InteractionLimitResponse do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:limit, :struct, ExOctocat.Model.InteractionGroup, options)
  end
end
