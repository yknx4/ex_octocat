# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.GitUser do
  @moduledoc """
  Metaproperties for Git author/committer information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :email,
    :date
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :email => String.t() | nil,
          :date => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.GitUser do
  def decode(value, _options) do
    value
  end
end
