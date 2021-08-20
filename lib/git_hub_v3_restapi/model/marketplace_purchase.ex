# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.MarketplacePurchase do
  @moduledoc """
  Marketplace Purchase
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :type,
    :id,
    :login,
    :organization_billing_email,
    :email,
    :marketplace_pending_change,
    :marketplace_purchase
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :type => String.t(),
          :id => integer(),
          :login => String.t(),
          :organization_billing_email => String.t() | nil,
          :email => String.t() | nil,
          :marketplace_pending_change =>
            ExOctocat.Model.MarketplacePurchaseMarketplacePendingChange.t() | nil,
          :marketplace_purchase =>
            ExOctocat.Model.MarketplacePurchaseMarketplacePurchase.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.MarketplacePurchase do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :marketplace_pending_change,
      :struct,
      ExOctocat.Model.MarketplacePurchaseMarketplacePendingChange,
      options
    )
    |> deserialize(
      :marketplace_purchase,
      :struct,
      ExOctocat.Model.MarketplacePurchaseMarketplacePurchase,
      options
    )
  end
end