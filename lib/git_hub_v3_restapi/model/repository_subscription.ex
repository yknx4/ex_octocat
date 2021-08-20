# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RepositorySubscription do
  @moduledoc """
  Repository invitations let you manage who you collaborate with.
  """

  @derive [Poison.Encoder]
  defstruct [
    :subscribed,
    :ignored,
    :reason,
    :created_at,
    :url,
    :repository_url
  ]

  @type t :: %__MODULE__{
          :subscribed => boolean(),
          :ignored => boolean(),
          :reason => String.t() | nil,
          :created_at => DateTime.t(),
          :url => String.t(),
          :repository_url => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RepositorySubscription do
  def decode(value, _options) do
    value
  end
end