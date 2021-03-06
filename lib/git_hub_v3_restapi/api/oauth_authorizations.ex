# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Api.OauthAuthorizations do
  @moduledoc """
  API calls for all endpoints tagged `OauthAuthorizations`.
  """

  alias ExOctocat.Connection
  import ExOctocat.RequestBuilder

  @doc """
  Create a new authorization
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  Creates OAuth tokens using [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication). If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication).\"  To create tokens for a particular OAuth application using this endpoint, you must authenticate as the user you want to create an authorization for and provide the app's client ID and secret, found on your OAuth application's settings page. If your OAuth application intends to create multiple tokens for one user, use `fingerprint` to differentiate between them.  You can also create tokens on GitHub from the [personal access tokens settings](https://github.com/settings/tokens) page. Read more about these tokens in [the GitHub Help documentation](https://help.github.com/articles/creating-an-access-token-for-command-line-use).  Organizations that enforce SAML SSO require personal access tokens to be allowed. Read more about allowing tokens in [the GitHub Help documentation](https://help.github.com/articles/about-identity-and-access-management-with-saml-single-sign-on).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject7):
  ## Returns

  {:ok, ExOctocat.Model.Authorization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_create_authorization(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Authorization.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_create_authorization(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/authorizations")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %ExOctocat.Model.Authorization{}},
      {422, %ExOctocat.Model.ValidationError{}},
      {410, %ExOctocat.Model.BasicError{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Delete an authorization
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - authorization_id (integer()): authorization_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_delete_authorization(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def oauth_authorizations_delete_authorization(connection, authorization_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/authorizations/#{authorization_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Delete a grant
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for your user. Once deleted, the application has no access to your account and is no longer listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - grant_id (integer()): grant_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_delete_grant(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def oauth_authorizations_delete_grant(connection, grant_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/applications/grants/#{grant_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get a single authorization
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - authorization_id (integer()): authorization_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.Authorization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_get_authorization(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Authorization.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_get_authorization(connection, authorization_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/authorizations/#{authorization_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Authorization{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get a single grant
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - grant_id (integer()): grant_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.ApplicationGrant.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_get_grant(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.ApplicationGrant.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_get_grant(connection, grant_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/applications/grants/#{grant_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.ApplicationGrant{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get-or-create an authorization for a specific app
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  Creates a new authorization for the specified OAuth application, only if an authorization for that application doesn't already exist for the user. The URL includes the 20 character client ID for the OAuth app that is requesting the token. It returns the user's existing authorization for the application if one is present. Otherwise, it creates and returns a new one.  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication).\"  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - client_id (String.t): The client ID of your GitHub app.
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject8):
  ## Returns

  {:ok, ExOctocat.Model.Authorization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_get_or_create_authorization_for_app(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Authorization.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_get_or_create_authorization_for_app(connection, client_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/authorizations/clients/#{client_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Authorization{}},
      {201, %ExOctocat.Model.Authorization{}},
      {422, %ExOctocat.Model.ValidationError{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get-or-create an authorization for a specific app and fingerprint
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  This method will create a new authorization for the specified OAuth application, only if an authorization for that application and fingerprint do not already exist for the user. The URL includes the 20 character client ID for the OAuth app that is requesting the token. `fingerprint` is a unique string to distinguish an authorization from others created for the same client ID and user. It returns the user's existing authorization for the application if one is present. Otherwise, it creates and returns a new one.  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication).\"

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - client_id (String.t): The client ID of your GitHub app.
  - fingerprint (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject9):
  ## Returns

  {:ok, ExOctocat.Model.Authorization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_get_or_create_authorization_for_app_and_fingerprint(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.Authorization.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_get_or_create_authorization_for_app_and_fingerprint(
        connection,
        client_id,
        fingerprint,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/authorizations/clients/#{client_id}/#{fingerprint}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Authorization{}},
      {201, %ExOctocat.Model.Authorization{}},
      {422, %ExOctocat.Model.ValidationError{}}
    ])
  end

  @doc """
  List your authorizations
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
    - :client_id (String.t): The client ID of your GitHub app.
  ## Returns

  {:ok, [%Authorization{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_list_authorizations(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, list(ExOctocat.Model.Authorization.t())}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_list_authorizations(connection, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query,
      :client_id => :query
    }

    %{}
    |> method(:get)
    |> url("/authorizations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.Authorization{}]},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  List your grants
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  You can use this API to list the set of OAuth applications that have been granted access to your account. Unlike the [list your authorizations](https://docs.github.com/rest/reference/oauth-authorizations#list-your-authorizations) API, this API does not manage individual tokens. This API will return one entry for each OAuth application that has been granted access to your account, regardless of the number of tokens an application has generated for your user. The list of OAuth applications returned matches what is shown on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized). The `scopes` returned are the union of scopes authorized for the application. For example, if an application has one token with `repo` scope and another token with `user` scope, the grant will return `[\"repo\", \"user\"]`.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
    - :client_id (String.t): The client ID of your GitHub app.
  ## Returns

  {:ok, [%ApplicationGrant{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_list_grants(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, list(ExOctocat.Model.ApplicationGrant.t())}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_list_grants(connection, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query,
      :client_id => :query
    }

    %{}
    |> method(:get)
    |> url("/applications/grants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.ApplicationGrant{}]},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Update an existing authorization
  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication).\"  You can only send one of these scope keys at a time.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - authorization_id (integer()): authorization_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject10):
  ## Returns

  {:ok, ExOctocat.Model.Authorization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec oauth_authorizations_update_authorization(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.Authorization.t()}
          | {:error, Tesla.Env.t()}
  def oauth_authorizations_update_authorization(connection, authorization_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/authorizations/#{authorization_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Authorization{}},
      {422, %ExOctocat.Model.ValidationError{}}
    ])
  end
end
