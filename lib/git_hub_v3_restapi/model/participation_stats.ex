# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ParticipationStats do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :all,
    :owner
  ]

  @type t :: %__MODULE__{
          :all => [integer()],
          :owner => [integer()]
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ParticipationStats do
  def decode(value, _options) do
    value
  end
end
