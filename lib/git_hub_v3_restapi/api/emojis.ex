# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Api.Emojis do
  @moduledoc """
  API calls for all endpoints tagged `Emojis`.
  """

  alias ExOctocat.Connection
  import ExOctocat.RequestBuilder

  @doc """
  Get emojis
  Lists all the emojis available to use on GitHub.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec emojis_get(Tesla.Env.client(), keyword()) ::
          {:ok, map()} | {:ok, nil} | {:error, Tesla.Env.t()}
  def emojis_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emojis")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %{}},
      {304, false}
    ])
  end
end
