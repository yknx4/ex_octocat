# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineResponse5031 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :message,
    :documentation_url,
    :errors
  ]

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :message => String.t() | nil,
          :documentation_url => String.t() | nil,
          :errors => [ExOctocat.Model.InlineResponse5031Errors.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineResponse5031 do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errors, :list, ExOctocat.Model.InlineResponse5031Errors, options)
  end
end
