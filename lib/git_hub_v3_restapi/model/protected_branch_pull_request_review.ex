# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.ProtectedBranchPullRequestReview do
  @moduledoc """
  Protected Branch Pull Request Review
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :dismissal_restrictions,
    :dismiss_stale_reviews,
    :require_code_owner_reviews,
    :required_approving_review_count
  ]

  @type t :: %__MODULE__{
          :url => String.t() | nil,
          :dismissal_restrictions =>
            ExOctocat.Model.ProtectedBranchPullRequestReviewDismissalRestrictions.t() | nil,
          :dismiss_stale_reviews => boolean(),
          :require_code_owner_reviews => boolean(),
          :required_approving_review_count => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.ProtectedBranchPullRequestReview do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :dismissal_restrictions,
      :struct,
      ExOctocat.Model.ProtectedBranchPullRequestReviewDismissalRestrictions,
      options
    )
  end
end
