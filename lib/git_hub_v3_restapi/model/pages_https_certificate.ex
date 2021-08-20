# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PagesHttpsCertificate do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :state,
    :description,
    :domains,
    :expires_at
  ]

  @type t :: %__MODULE__{
          :state => String.t(),
          :description => String.t(),
          :domains => List,
          :expires_at => Date.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PagesHttpsCertificate do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:expires_at, :date, nil, options)
  end
end
