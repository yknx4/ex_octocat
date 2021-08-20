# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestHeadRepoLicense do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :key,
    :name,
    :url,
    :spdx_id,
    :node_id
  ]

  @type t :: %__MODULE__{
          :key => String.t(),
          :name => String.t(),
          :url => String.t() | nil,
          :spdx_id => String.t() | nil,
          :node_id => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestHeadRepoLicense do
  def decode(value, _options) do
    value
  end
end
