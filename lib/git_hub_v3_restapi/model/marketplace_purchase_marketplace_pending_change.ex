# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.MarketplacePurchaseMarketplacePendingChange do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :is_installed,
    :effective_date,
    :unit_count,
    :id,
    :plan
  ]

  @type t :: %__MODULE__{
          :is_installed => boolean() | nil,
          :effective_date => String.t() | nil,
          :unit_count => integer() | nil,
          :id => integer() | nil,
          :plan => ExOctocat.Model.MarketplaceListingPlan.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.MarketplacePurchaseMarketplacePendingChange do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:plan, :struct, ExOctocat.Model.MarketplaceListingPlan, options)
  end
end
