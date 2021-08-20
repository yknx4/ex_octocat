# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.CommitFiles do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :filename,
    :additions,
    :deletions,
    :changes,
    :status,
    :raw_url,
    :blob_url,
    :patch,
    :sha,
    :contents_url,
    :previous_filename
  ]

  @type t :: %__MODULE__{
          :filename => String.t() | nil,
          :additions => integer() | nil,
          :deletions => integer() | nil,
          :changes => integer() | nil,
          :status => String.t() | nil,
          :raw_url => String.t() | nil,
          :blob_url => String.t() | nil,
          :patch => String.t() | nil,
          :sha => String.t() | nil,
          :contents_url => String.t() | nil,
          :previous_filename => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.CommitFiles do
  def decode(value, _options) do
    value
  end
end