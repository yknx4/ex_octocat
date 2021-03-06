# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CodeOfConductSimple do
  @moduledoc """
  Code of Conduct Simple
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :key,
    :name,
    :html_url
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :key => String.t(),
          :name => String.t(),
          :html_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CodeOfConductSimple do
  def decode(value, _options) do
    value
  end
end
