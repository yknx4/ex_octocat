# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.MilestonedIssueEventMilestone do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title
  ]

  @type t :: %__MODULE__{
          :title => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.MilestonedIssueEventMilestone do
  def decode(value, _options) do
    value
  end
end
