# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ShortBranchCommit do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sha,
    :url
  ]

  @type t :: %__MODULE__{
          :sha => String.t(),
          :url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ShortBranchCommit do
  def decode(value, _options) do
    value
  end
end
