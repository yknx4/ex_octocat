# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Autolink do
  @moduledoc """
  An autolink reference.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :key_prefix,
    :url_template
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :key_prefix => String.t(),
          :url_template => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Autolink do
  def decode(value, _options) do
    value
  end
end
