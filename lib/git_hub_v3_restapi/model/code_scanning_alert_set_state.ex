# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CodeScanningAlertSetState do
  @moduledoc """
  Sets the state of the code scanning alert. Can be one of `open` or `dismissed`. You must provide `dismissed_reason` when you set the state to `dismissed`.
  """

  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: ExOctocat.Model.CodeScanningAlertSetState do
  def decode(value, _options) do
    value
  end
end
