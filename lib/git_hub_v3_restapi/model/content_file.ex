# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ContentFile do
  @moduledoc """
  Content File
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :encoding,
    :size,
    :name,
    :path,
    :content,
    :sha,
    :url,
    :git_url,
    :html_url,
    :download_url,
    :_links,
    :target,
    :submodule_git_url
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :encoding => String.t(),
          :size => integer(),
          :name => String.t(),
          :path => String.t(),
          :content => String.t(),
          :sha => String.t(),
          :url => String.t(),
          :git_url => String.t() | nil,
          :html_url => String.t() | nil,
          :download_url => String.t() | nil,
          :_links => ExOctocat.Model.ContentTreeLinks.t(),
          :target => String.t() | nil,
          :submodule_git_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ContentFile do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:_links, :struct, ExOctocat.Model.ContentTreeLinks, options)
  end
end
