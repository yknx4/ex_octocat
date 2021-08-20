# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.BasicError do
  @moduledoc """
  Basic Error
  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :documentation_url,
    :url,
    :status
  ]

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :documentation_url => String.t() | nil,
          :url => String.t() | nil,
          :status => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.BasicError do
  def decode(value, _options) do
    value
  end
end
