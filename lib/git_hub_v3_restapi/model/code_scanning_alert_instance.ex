# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CodeScanningAlertInstance do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ref,
    :analysis_key,
    :environment,
    :state,
    :commit_sha,
    :message,
    :location,
    :html_url,
    :classifications
  ]

  @type t :: %__MODULE__{
          :ref => String.t() | nil,
          :analysis_key => String.t() | nil,
          :environment => String.t() | nil,
          :state => ExOctocat.Model.CodeScanningAlertState.t() | nil,
          :commit_sha => String.t() | nil,
          :message => ExOctocat.Model.CodeScanningAlertInstanceMessage.t() | nil,
          :location => ExOctocat.Model.CodeScanningAlertLocation.t() | nil,
          :html_url => String.t() | nil,
          :classifications => [ExOctocat.Model.CodeScanningAlertClassification.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CodeScanningAlertInstance do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:state, :struct, ExOctocat.Model.CodeScanningAlertState, options)
    |> deserialize(
      :message,
      :struct,
      ExOctocat.Model.CodeScanningAlertInstanceMessage,
      options
    )
    |> deserialize(:location, :struct, ExOctocat.Model.CodeScanningAlertLocation, options)
    |> deserialize(
      :classifications,
      :list,
      ExOctocat.Model.CodeScanningAlertClassification,
      options
    )
  end
end