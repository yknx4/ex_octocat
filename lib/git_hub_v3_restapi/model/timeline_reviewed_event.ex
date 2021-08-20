# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TimelineReviewedEvent do
  @moduledoc """
  Timeline Reviewed Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :event,
    :id,
    :node_id,
    :user,
    :body,
    :state,
    :html_url,
    :pull_request_url,
    :_links,
    :submitted_at,
    :commit_id,
    :body_html,
    :body_text,
    :author_association
  ]

  @type t :: %__MODULE__{
          :event => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :user => ExOctocat.Model.SimpleUser.t() | nil,
          :body => String.t() | nil,
          :state => String.t(),
          :html_url => String.t(),
          :pull_request_url => String.t(),
          :_links => ExOctocat.Model.TimelineReviewedEventLinks.t(),
          :submitted_at => DateTime.t() | nil,
          :commit_id => String.t(),
          :body_html => String.t() | nil,
          :body_text => String.t() | nil,
          :author_association => ExOctocat.Model.AuthorAssociation.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TimelineReviewedEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:_links, :struct, ExOctocat.Model.TimelineReviewedEventLinks, options)
    |> deserialize(:author_association, :struct, ExOctocat.Model.AuthorAssociation, options)
  end
end
