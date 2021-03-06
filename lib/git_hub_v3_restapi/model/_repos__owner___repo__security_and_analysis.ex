# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysis do
  @moduledoc """
  Specify which security and analysis features to enable or disable. For example, to enable GitHub Advanced Security, use this data in the body of the PATCH request: `{\"security_and_analysis\": {\"advanced_security\": {\"status\": \"enabled\"}}}`. If you have admin permissions for a private repository covered by an Advanced Security license, you can check which security and analysis features are currently enabled by using a `GET /repos/{owner}/{repo}` request.
  """

  @derive [Poison.Encoder]
  defstruct [
    :advanced_security,
    :secret_scanning
  ]

  @type t :: %__MODULE__{
          :advanced_security =>
            ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysisAdvancedSecurity.t() | nil,
          :secret_scanning =>
            ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysisSecretScanning.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysis do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :advanced_security,
      :struct,
      ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysisAdvancedSecurity,
      options
    )
    |> deserialize(
      :secret_scanning,
      :struct,
      ExOctocat.Model.ReposOwnerRepoSecurityAndAnalysisSecretScanning,
      options
    )
  end
end
