# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.WorkflowRunUsageBillableUbuntu do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total_ms,
    :jobs
  ]

  @type t :: %__MODULE__{
          :total_ms => integer(),
          :jobs => integer()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.WorkflowRunUsageBillableUbuntu do
  def decode(value, _options) do
    value
  end
end