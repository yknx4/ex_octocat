# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject70 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :auto_trigger_checks
  ]

  @type t :: %__MODULE__{
          :auto_trigger_checks =>
            [ExOctocat.Model.ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks.t()]
            | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject70 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :auto_trigger_checks,
      :list,
      ExOctocat.Model.ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks,
      options
    )
  end
end
