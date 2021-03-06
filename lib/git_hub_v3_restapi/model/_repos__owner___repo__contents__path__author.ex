# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ReposOwnerRepoContentsPathAuthor do
  @moduledoc """
  The author of the file. Default: The `committer` or the authenticated user if you omit `committer`.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :email,
    :date
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :email => String.t(),
          :date => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ReposOwnerRepoContentsPathAuthor do
  def decode(value, _options) do
    value
  end
end
