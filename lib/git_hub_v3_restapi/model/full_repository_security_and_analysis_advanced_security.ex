# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.FullRepositorySecurityAndAnalysisAdvancedSecurity do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :status
  ]

  @type t :: %__MODULE__{
          :status => String.t() | nil
        }
end

defimpl Poison.Decoder,
  for: ExOctocat.Model.FullRepositorySecurityAndAnalysisAdvancedSecurity do
  def decode(value, _options) do
    value
  end
end
