# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Traffic do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :timestamp,
    :uniques,
    :count
  ]

  @type t :: %__MODULE__{
          :timestamp => DateTime.t(),
          :uniques => integer(),
          :count => integer()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Traffic do
  def decode(value, _options) do
    value
  end
end
