# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ValidationErrorErrors do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :resource,
    :field,
    :message,
    :code,
    :index,
    :value
  ]

  @type t :: %__MODULE__{
          :resource => String.t() | nil,
          :field => String.t() | nil,
          :message => String.t() | nil,
          :code => String.t(),
          :index => integer() | nil,
          :value => OneOfstringintegerarray | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ValidationErrorErrors do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:value, :struct, ExOctocat.Model.OneOfstringintegerarray, options)
  end
end
