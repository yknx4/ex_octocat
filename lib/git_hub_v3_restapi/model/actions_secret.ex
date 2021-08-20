# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ActionsSecret do
  @moduledoc """
  Set secrets for GitHub Actions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ActionsSecret do
  def decode(value, _options) do
    value
  end
end