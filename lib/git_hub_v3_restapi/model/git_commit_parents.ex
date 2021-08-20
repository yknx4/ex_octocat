# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GitCommitParents do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sha,
    :url,
    :html_url
  ]

  @type t :: %__MODULE__{
          :sha => String.t(),
          :url => String.t(),
          :html_url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GitCommitParents do
  def decode(value, _options) do
    value
  end
end
