# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.JobSteps do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :status,
    :conclusion,
    :name,
    :number,
    :started_at,
    :completed_at
  ]

  @type t :: %__MODULE__{
          :status => String.t(),
          :conclusion => String.t() | nil,
          :name => String.t(),
          :number => integer(),
          :started_at => DateTime.t() | nil,
          :completed_at => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.JobSteps do
  def decode(value, _options) do
    value
  end
end
