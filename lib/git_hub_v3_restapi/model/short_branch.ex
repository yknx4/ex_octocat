# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ShortBranch do
  @moduledoc """
  Short Branch
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :commit,
    :protected,
    :protection,
    :protection_url
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :commit => ExOctocat.Model.ShortBranchCommit.t(),
          :protected => boolean(),
          :protection => ExOctocat.Model.BranchProtection.t() | nil,
          :protection_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ShortBranch do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:commit, :struct, ExOctocat.Model.ShortBranchCommit, options)
    |> deserialize(:protection, :struct, ExOctocat.Model.BranchProtection, options)
  end
end
