# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Api.SecretScanning do
  @moduledoc """
  API calls for all endpoints tagged `SecretScanning`.
  """

  alias ExOctocat.Connection
  import ExOctocat.RequestBuilder

  @doc """
  Get a secret scanning alert
  Gets a single secret scanning alert detected in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - alert_number (integer()): The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the `number` field in the response from the `GET /repos/{owner}/{repo}/code-scanning/alerts` operation.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.SecretScanningAlert.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec secret_scanning_get_alert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.SecretScanningAlert.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def secret_scanning_get_alert(connection, owner, repo, alert_number, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/secret-scanning/alerts/#{alert_number}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.SecretScanningAlert{}},
      {404, false},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  List secret scanning alerts for a repository
  Lists all secret scanning alerts for a private repository, from newest to oldest. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :state (String.t): Set to `open` or `resolved` to only list secret scanning alerts in a specific state.
    - :secret_type (String.t): A comma separated list of secret types to return. By default all secret types are returned. See \"[About secret scanning for private repositories](https://docs.github.com/code-security/secret-security/about-secret-scanning#about-secret-scanning-for-private-repositories)\" for a complete list of secret types (API slug).
    - :page (integer()): Page number of the results to fetch.
    - :per_page (integer()): Results per page (max 100)
  ## Returns

  {:ok, [%SecretScanningAlert{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec secret_scanning_list_alerts_for_repo(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, list(ExOctocat.Model.SecretScanningAlert.t())}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def secret_scanning_list_alerts_for_repo(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :state => :query,
      :secret_type => :query,
      :page => :query,
      :per_page => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/secret-scanning/alerts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.SecretScanningAlert{}]},
      {404, false},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Update a secret scanning alert
  Updates the status of a secret scanning alert in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` write permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - alert_number (integer()): The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the `number` field in the response from the `GET /repos/{owner}/{repo}/code-scanning/alerts` operation.
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject134):
  ## Returns

  {:ok, ExOctocat.Model.SecretScanningAlert.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec secret_scanning_update_alert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.SecretScanningAlert.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def secret_scanning_update_alert(connection, owner, repo, alert_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/repos/#{owner}/#{repo}/secret-scanning/alerts/#{alert_number}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.SecretScanningAlert{}},
      {404, false},
      {422, false},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end
end