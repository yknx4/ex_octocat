# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GitTreeTree do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :path,
    :mode,
    :type,
    :sha,
    :size,
    :url
  ]

  @type t :: %__MODULE__{
          :path => String.t() | nil,
          :mode => String.t() | nil,
          :type => String.t() | nil,
          :sha => String.t() | nil,
          :size => integer() | nil,
          :url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GitTreeTree do
  def decode(value, _options) do
    value
  end
end
