# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.BaseGistFiles do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :filename,
    :type,
    :language,
    :raw_url,
    :size
  ]

  @type t :: %__MODULE__{
          :filename => String.t() | nil,
          :type => String.t() | nil,
          :language => String.t() | nil,
          :raw_url => String.t() | nil,
          :size => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.BaseGistFiles do
  def decode(value, _options) do
    value
  end
end
