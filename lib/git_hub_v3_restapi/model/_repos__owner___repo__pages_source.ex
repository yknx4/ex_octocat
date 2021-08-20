# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ReposOwnerRepoPagesSource do
  @moduledoc """
  The source branch and directory used to publish your Pages site.
  """

  @derive [Poison.Encoder]
  defstruct [
    :branch,
    :path
  ]

  @type t :: %__MODULE__{
          :branch => String.t(),
          :path => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ReposOwnerRepoPagesSource do
  def decode(value, _options) do
    value
  end
end
