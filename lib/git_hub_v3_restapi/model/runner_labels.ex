# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RunnerLabels do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :type
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RunnerLabels do
  def decode(value, _options) do
    value
  end
end