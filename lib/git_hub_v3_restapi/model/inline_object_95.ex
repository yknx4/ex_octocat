# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.InlineObject95 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :vcs_username,
    :vcs_password,
    :vcs,
    :tfvc_project
  ]

  @type t :: %__MODULE__{
          :vcs_username => String.t() | nil,
          :vcs_password => String.t() | nil,
          :vcs => String.t() | nil,
          :tfvc_project => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.InlineObject95 do
  def decode(value, _options) do
    value
  end
end