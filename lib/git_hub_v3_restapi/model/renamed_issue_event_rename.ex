# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.RenamedIssueEventRename do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :from,
    :to
  ]

  @type t :: %__MODULE__{
          :from => String.t(),
          :to => String.t()
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.RenamedIssueEventRename do
  def decode(value, _options) do
    value
  end
end
