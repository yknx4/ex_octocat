# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.FileCommitContentLinks do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :self,
    :git,
    :html
  ]

  @type t :: %__MODULE__{
          :self => String.t() | nil,
          :git => String.t() | nil,
          :html => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.FileCommitContentLinks do
  def decode(value, _options) do
    value
  end
end
