# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ReviewDismissedIssueEvent do
  @moduledoc """
  Review Dismissed Issue Event
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :node_id,
    :url,
    :actor,
    :event,
    :commit_id,
    :commit_url,
    :created_at,
    :performed_via_github_app,
    :dismissed_review
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :node_id => String.t(),
          :url => String.t(),
          :actor => ExOctocat.Model.SimpleUser.t() | nil,
          :event => String.t(),
          :commit_id => String.t() | nil,
          :commit_url => String.t() | nil,
          :created_at => String.t(),
          :performed_via_github_app => ExOctocat.Model.Integration.t() | nil,
          :dismissed_review => ExOctocat.Model.ReviewDismissedIssueEventDismissedReview.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ReviewDismissedIssueEvent do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:actor, :struct, ExOctocat.Model.SimpleUser, options)
    |> deserialize(:performed_via_github_app, :struct, ExOctocat.Model.Integration, options)
    |> deserialize(
      :dismissed_review,
      :struct,
      ExOctocat.Model.ReviewDismissedIssueEventDismissedReview,
      options
    )
  end
end
