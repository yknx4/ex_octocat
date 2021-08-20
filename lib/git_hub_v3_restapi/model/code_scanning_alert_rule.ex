# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CodeScanningAlertRule do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :severity,
    :security_severity_level,
    :description,
    :full_description,
    :tags,
    :help
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :severity => String.t() | nil,
          :security_severity_level => String.t() | nil,
          :description => String.t() | nil,
          :full_description => String.t() | nil,
          :tags => [String.t()] | nil,
          :help => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CodeScanningAlertRule do
  def decode(value, _options) do
    value
  end
end
