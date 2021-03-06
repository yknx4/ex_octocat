# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ContentSymlink do
  @moduledoc """
  An object describing a symlink
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :target,
    :size,
    :name,
    :path,
    :sha,
    :url,
    :git_url,
    :html_url,
    :download_url,
    :_links
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :target => String.t(),
          :size => integer(),
          :name => String.t(),
          :path => String.t(),
          :sha => String.t(),
          :url => String.t(),
          :git_url => String.t() | nil,
          :html_url => String.t() | nil,
          :download_url => String.t() | nil,
          :_links => ExOctocat.Model.ContentTreeLinks.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ContentSymlink do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:_links, :struct, ExOctocat.Model.ContentTreeLinks, options)
  end
end
