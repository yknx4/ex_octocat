# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.LicenseContent do
  @moduledoc """
  License Content
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :path,
    :sha,
    :size,
    :url,
    :html_url,
    :git_url,
    :download_url,
    :type,
    :content,
    :encoding,
    :_links,
    :license
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :path => String.t(),
          :sha => String.t(),
          :size => integer(),
          :url => String.t(),
          :html_url => String.t() | nil,
          :git_url => String.t() | nil,
          :download_url => String.t() | nil,
          :type => String.t(),
          :content => String.t(),
          :encoding => String.t(),
          :_links => ExOctocat.Model.ContentTreeLinks.t(),
          :license => LicenseSimple | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.LicenseContent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:_links, :struct, ExOctocat.Model.ContentTreeLinks, options)
    |> deserialize(:license, :struct, ExOctocat.Model.LicenseSimple, options)
  end
end
