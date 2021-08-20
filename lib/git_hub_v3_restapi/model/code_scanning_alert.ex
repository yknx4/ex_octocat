# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CodeScanningAlert do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :created_at,
    :url,
    :html_url,
    :instances,
    :instances_url,
    :state,
    :dismissed_by,
    :dismissed_at,
    :dismissed_reason,
    :rule,
    :tool,
    :most_recent_instance
  ]

  @type t :: %__MODULE__{
          :number => integer(),
          :created_at => DateTime.t(),
          :url => String.t(),
          :html_url => String.t(),
          :instances => AnyType | nil,
          :instances_url => String.t(),
          :state => ExOctocat.Model.CodeScanningAlertState.t(),
          :dismissed_by => ExOctocat.Model.SimpleUser.t() | nil,
          :dismissed_at => DateTime.t() | nil,
          :dismissed_reason => ExOctocat.Model.CodeScanningAlertDismissedReason.t() | nil,
          :rule => ExOctocat.Model.CodeScanningAlertRule.t(),
          :tool => ExOctocat.Model.CodeScanningAnalysisTool.t(),
          :most_recent_instance => ExOctocat.Model.CodeScanningAlertInstance.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CodeScanningAlert do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:instances, :struct, ExOctocat.Model.AnyType, options)
    |> deserialize(:state, :struct, ExOctocat.Model.CodeScanningAlertState, options)
    |> deserialize(:dismissed_by, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(
      :dismissed_reason,
      :struct,
      ExOctocat.Model.CodeScanningAlertDismissedReason,
      options
    )
    |> deserialize(:rule, :struct, ExOctocat.Model.CodeScanningAlertRule, options)
    |> deserialize(:tool, :struct, ExOctocat.Model.CodeScanningAnalysisTool, options)
    |> deserialize(
      :most_recent_instance,
      :struct,
      ExOctocat.Model.CodeScanningAlertInstance,
      options
    )
  end
end