# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.PullRequestReviewCommentLinksPullRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :href
  ]

  @type t :: %__MODULE__{
          :href => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.PullRequestReviewCommentLinksPullRequest do
  def decode(value, _options) do
    value
  end
end
