# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ReposOwnerRepoContentsPathCommitter1 do
  @moduledoc """
  object containing information about the committer.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :email
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :email => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ReposOwnerRepoContentsPathCommitter1 do
  def decode(value, _options) do
    value
  end
end
