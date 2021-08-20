# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PorterAuthor do
  @moduledoc """
  Porter Author
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :remote_id,
    :remote_name,
    :email,
    :name,
    :url,
    :import_url
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :remote_id => String.t(),
          :remote_name => String.t(),
          :email => String.t(),
          :name => String.t(),
          :url => String.t(),
          :import_url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PorterAuthor do
  def decode(value, _options) do
    value
  end
end