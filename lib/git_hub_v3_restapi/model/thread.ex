# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.Thread do
  @moduledoc """
  Thread
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :repository,
    :subject,
    :reason,
    :unread,
    :updated_at,
    :last_read_at,
    :url,
    :subscription_url
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :repository => ExOctocat.Model.MinimalRepository.t(),
          :subject => ExOctocat.Model.ThreadSubject.t(),
          :reason => String.t(),
          :unread => boolean(),
          :updated_at => String.t(),
          :last_read_at => String.t() | nil,
          :url => String.t(),
          :subscription_url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.Thread do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repository, :struct, ExOctocat.Model.MinimalRepository, options)
    |> deserialize(:subject, :struct, ExOctocat.Model.ThreadSubject, options)
  end
end
