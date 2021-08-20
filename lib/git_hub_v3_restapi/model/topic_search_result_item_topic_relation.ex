# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.TopicSearchResultItemTopicRelation do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :topic_id,
    :relation_type
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :topic_id => integer() | nil,
          :relation_type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.TopicSearchResultItemTopicRelation do
  def decode(value, _options) do
    value
  end
end
